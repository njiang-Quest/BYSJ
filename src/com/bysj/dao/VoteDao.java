package com.bysj.dao;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.bysj.bean.VoteAffixBean;
import com.bysj.bean.VoteBean;
import com.bysj.bean.VoteDetailBean;
import com.bysj.common.ConnectionUtil;
import com.bysj.common.StringUtil;

public class VoteDao {
	
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Statement state = null;
	
	/**
	 * add a vote
	 * @param vote
	 * @return
	 */
	public boolean addVote(VoteBean vote) {
		conn = ConnectionUtil.getConnection();
		int ok = 0;
		try {
			ps = conn.prepareStatement(SQLStatement.ADD_VOTE);
			ps.setString(1, vote.getBeginTime());
			if(vote.getEndTime()!=null)
				ps.setString(2, vote.getEndTime());
			else 
				ps.setString(2, null);
			ps.setString(3, vote.getOptions());
			ps.setString(4, "");//有权人
			ps.setString(5, "j-road");//发起人
			if(vote.getContext()!=null)
				ps.setString(6, vote.getContext());
			else 
				ps.setString(6, null);
			ps.setString(7, vote.getTitle());
			ps.setInt(8, vote.getOptional());
			
			ok = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return ok>0?true:false;		
	}
	
	/*
	 * get all votes from database
	 */
	public List<VoteBean> getVotes(){
		conn = ConnectionUtil.getConnection();
		
		List<VoteBean> voteList = new ArrayList<VoteBean>();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(SQLStatement.VOTES);
			while(rs.next()){
				VoteBean vote = new VoteBean();
				vote.setVoteId(rs.getInt(1));
				vote.setBeginTime(rs.getDate(2).toString());
				if(rs.getDate(3)!=null)
					vote.setEndTime(rs.getDate(3).toString());
				vote.setTotal_tickets(rs.getInt(4));
				vote.setOptions(rs.getString(5));
				if(rs.getString(6)!=null)
					vote.setYouquanren(rs.getString(6));
				vote.setFaqiren(rs.getString(7));
				if(rs.getString(8) != null)
					vote.setContext(rs.getString(8));
				vote.setTitle(rs.getString(9));
				vote.setOptional(rs.getInt(10));
				vote.setStatus(rs.getInt(11)); //vote status
				
				voteList.add(vote);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, state, rs);
		}
		return voteList;
	}
	
	/*
	 * get a vote accurately
	 */
	public VoteBean getCurrVote(int voteId) {
		
		conn = ConnectionUtil.getConnection();
		
		VoteBean vote = null;		
		try {
			ps = conn.prepareStatement(SQLStatement.CURRENT_VOTE);
			ps.setInt(1, voteId);
			rs = ps.executeQuery();
			if(rs.next()){
				vote = new VoteBean();
				vote.setVoteId(voteId);
				vote.setBeginTime(rs.getDate(2).toString());
				if(rs.getDate(3)!=null)
					vote.setEndTime(rs.getDate(3).toString());
				vote.setTotal_tickets(rs.getInt(4));
				vote.setOptions(rs.getString(5));
				if(rs.getString(6)!=null)
					vote.setYouquanren(rs.getString(6));
				vote.setYouquanren(rs.getString(6));
				vote.setFaqiren(rs.getString(7));
				if(rs.getString(8) != null)
					vote.setContext(rs.getString(8));
				vote.setTitle(rs.getString(9));
				vote.setOptional(rs.getInt(10));
				vote.setStatus(rs.getInt(11));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		
		return vote;
		
	}
	
	 /*
	  * key:option
	  * value:path
	  * get path of the option
	  */
	  public Hashtable<String,String> getPath(int voteid,String option, Hashtable<String,String> affixs) {
		 conn = ConnectionUtil.getConnection();
//		 Map<String,String> affixs = new HashMap<String,String>();
		 try {
			ps = conn.prepareStatement(SQLStatement.GETALLPATH);
			ps.setInt(1, voteid);
			ps.setString(2, option);
			rs = ps.executeQuery();
			if(rs.next()){
				String path = rs.getString(1);
				if(path.contains(","))
					affixs.put(rs.getString(2), path.substring(path.lastIndexOf(',')+1,path.length()));
				else
					affixs.put(rs.getString(2), path);
			}
			else
				affixs.put(option, "none");
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		
		 return affixs;
	  }
	 
	 //获取某个投票的某个选项的情况
	 public VoteDetailBean getVoteDetail(int voteId,String username){
		VoteDetailBean voteDetail = null;
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(SQLStatement.VOTE_DETAIL);
			ps.setInt(1, voteId);
			ps.setString(2, username);
			rs = ps.executeQuery();
			if(rs.next()){
				voteDetail = new VoteDetailBean();
				voteDetail.setDetailId(rs.getInt(1));
				voteDetail.setVoteId(rs.getInt(2));
				voteDetail.setCont(rs.getInt(3));
				voteDetail.setOption(rs.getString(4));
				double total_count = getTotal_user(voteId);
				
//				System.out.println("total_count:"+total_count);
//				System.out.println("voteDetail.getCont():"+voteDetail.getCont());
				
				if(total_count > 0){
					voteDetail.setPercentage((int) Math.round(( voteDetail.getCont()/total_count)*100 ));
				} else {
					voteDetail.setPercentage(0);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return voteDetail;
	}
	
	/*
	 * get one vote total take part in person
	 */
	public int getTotal_user(int voteId){
		conn = ConnectionUtil.getConnection();
		int total_count = 0;
		try {
			ps = conn.prepareStatement(SQLStatement.TOTAL_COUNT);
			ps.setInt(1, voteId);
			rs = ps.executeQuery();
			if(rs.next())
				total_count = rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return total_count;
	}
	
	/*
	 * do_vote
	 * 同步方法 
	 * have to just is the first or not
	 */
	synchronized public boolean do_vote(int voteId,String option,int userid) {
		if(!isFirst(voteId,option)){
			System.out.println("is first time");
			return update_vote_detail(voteId,option,userid);
		}
		else {
			System.out.println("is not first time");
			if(!already_vote(voteId,userid));
				return update_detail_count(voteId,option,userid);
		}
			
		
	}
	
	/*
	 * do_vote
	 * 给一个投票的一个选项投,这个方法在第一次给该选项投票时使用
	 */
	 public boolean update_vote_detail(int voteId,String option,int userid){
		conn = ConnectionUtil.getConnection();
		
		int ok = 0;
		try {
			ps = conn.prepareStatement(SQLStatement.DO_VOTE);
			ps.setInt(1, voteId);
			ps.setString(2, option);
			ps.setString(3, String.valueOf(userid));
			
			ok = ps.executeUpdate();
//			if(ok >0)
//				ok=updateTotalCount(voteId);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return ok>0?true:false;
	}
	

	/*
	 * get option count
	 */
	 public int getVote_detail_count(int voteId,String option){
		conn = ConnectionUtil.getConnection();
		int count = 0;
		try {
			ps = conn.prepareStatement(SQLStatement.OPTION_COUNT);
			ps.setInt(1, voteId);
			ps.setString(2, option);
			rs = ps.executeQuery();
			if(rs.next())
				count = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return count;
	}
	 
	 /*
	  * do_vote
	  * only when this is not the first time to vote this option
	  */
	 public boolean update_detail_count(int voteId,String option,int userid){
		int ok = 0;
		int detail_count = getVote_detail_count(voteId,option);
		String toupiaoren = getToupiaoren(voteId,option);
		
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(SQLStatement.UPDATE_DETAIL_COUNT);
			ps.setInt(1, detail_count+1);
			ps.setString(2, toupiaoren+","+userid);
			ps.setInt(3, voteId);
			ps.setString(4, option);
			
			ok = ps.executeUpdate();
			
//			if(ok >0)
//				ok = updateTotalCount(voteId);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return ok>0?true:false;
	
	}
	
	 /*
	  * do vote also have to update total_count in table vote
	  */
//	 public int updateTotalCount(int voteId){
//		int total_count =  getTotal_user(voteId);
//		conn = ConnectionUtil.getConnection();
//		int ok = 0;
//		try {
//			ps = conn.prepareStatement(SQLStatement.UPDATE_TOTAL_COUNT);
//			ps.setInt(1,total_count+1);
//			ps.setInt(2, voteId);
//			
//			ok = ps.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			ConnectionUtil.freeConnection(conn, ps, rs);
//		}
//		return ok;
//	 }
	
	 /*
	  * To judge is first vote to this option 
	  */
	 private boolean isFirst(int voteId,String option){
		 conn = ConnectionUtil.getConnection();
			
			boolean ok = false;
			try {
				ps = conn.prepareStatement(SQLStatement.ISFIRST);
				ps.setInt(1, voteId);
				ps.setString(2, option);
				
				rs = ps.executeQuery();
				if(rs.next())
					ok=true;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				ConnectionUtil.freeConnection(conn, ps, rs);
			}
		 return ok;
	 }
	 
	 /*
	  * if currently user have already take park in this voting
	  */
	 public boolean already_vote(int voteId, int userid){
		 conn = ConnectionUtil.getConnection();
		 boolean ok = false;
		 try {
			ps = conn.prepareStatement(SQLStatement.ALREADY_VOTE);
			ps.setInt(1, voteId);
			rs = ps.executeQuery();
			while(rs.next()){
				if(rs.getString(1)!=null && rs.getString(1).contains(String.valueOf(userid))){
					ok= true;
					break;
				}
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		 
		 return ok;
	 }
	 
	 private String getToupiaoren(int voteId,String option){
		 conn = ConnectionUtil.getConnection();
		 String toupiaoren = "";
		 try {
			ps = conn.prepareStatement(SQLStatement.TOUPIAOREN);
			ps.setInt(1, voteId);
			ps.setString(2, option);
			rs = ps.executeQuery();
			if(rs.next())
				toupiaoren = rs.getString(1);
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		 
		 return toupiaoren;
	 }
	 
	 /*
	  * add vote affix
	  */
	 public int add_vote_affix(VoteAffixBean affix){
		  if(is_first_time_affix(affix.getAoption(),affix.getVoteid())) 
			  return add_affix_firstTime(affix);
		  else
			  return update_path(affix);
	 }
	 
	 /*
	  * is the first : insert the value
	  */
	 public int add_affix_firstTime(VoteAffixBean affix) {
		 conn = ConnectionUtil.getConnection();
		 int count = 0;
		 try {
			ps = conn.prepareStatement(SQLStatement.ADD_AFFIX);
			ps.setInt(1, affix.getVoteid());
			ps.setString(2, affix.getPathName());
			ps.setString(3, affix.getAoption());
			count = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		 
		 return count;
	 }
	 
	 /*
	  * is not the first time to add affix files
	  */
	 public int update_path(VoteAffixBean affix){
		 String path = getPath(affix)+",";
		 conn = ConnectionUtil.getConnection();
		 int count = 0;
		 try {
			ps = conn.prepareStatement(SQLStatement.NOTFIRSTTIME);
			ps.setString(1, path+affix.getPathName());
			ps.setInt(2, affix.getVoteid());
			ps.setString(3, affix.getAoption());
			
			count = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		 
		 return count;
	 }
	 
	 /*
	  * is this the first to upload file to the voting
	  */
	 public boolean is_first_time_affix(String username,int voteid){
		 conn = ConnectionUtil.getConnection();
		 try {
			ps = conn.prepareStatement(SQLStatement.ISFIRSF_AFFIX);
			ps.setInt(1, voteid);
			ps.setString(2, username);
			rs = ps.executeQuery();
			if(rs.next())
				return false;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		 return true;
	 }
	 
	 /*
	  * get one user 's path
	  */
	 private String getPath(VoteAffixBean affix) {
		 conn = ConnectionUtil.getConnection();
		 String path = "";
		 try {
			ps = conn.prepareStatement(SQLStatement.GETPATH);
			ps.setInt(1, affix.getVoteid());
			ps.setString(2, affix.getAoption());
			rs = ps.executeQuery();
			if(rs.next())
				path = rs.getString(1);
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		 	 ConnectionUtil.freeConnection(conn, ps, rs);
		}
		 
		 return path;
	 }
	 
}
