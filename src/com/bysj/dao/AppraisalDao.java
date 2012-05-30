package com.bysj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.jfree.data.category.DefaultCategoryDataset;

import com.bysj.bean.AppAnswerBean;
import com.bysj.bean.AppYiPingBean;
import com.bysj.bean.AppraisalBean;
import com.bysj.bean.AppraisalOptionBean;
import com.bysj.bean.File;
import com.bysj.bean.MuserBean;
import com.bysj.common.ConnectionUtil;

public class AppraisalDao {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Statement state = null;
	
	/*
	 * add app : before or after int have to add app_option 
	 */
	public boolean addAppraisal(AppraisalBean app){
		conn = ConnectionUtil.getConnection();
		int count = 0;
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.ADDAPP);
			
			ps.setString(1, app.getTitle());
			ps.setString(2, app.getContext());
			ps.setString(3, app.getType());
			ps.setInt(4, Integer.parseInt(app.getAllowAffix()));
			ps.setString(5, app.getAStartDate());
			ps.setString(6, app.getAEndDate());
			ps.setString(7, app.getStartDate());
			ps.setString(8, app.getEndDate());
			ps.setString(9, app.getBeiping());
			ps.setString(10, app.getCanping());
			count = ps.executeUpdate();
		} catch (SQLException e) {  
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		List<AppraisalOptionBean> optionlist = app.getOptions();
		for(int i= 0; i<optionlist.size();i++ ){
			count+=addAppraisalOptions(optionlist.get(i));
		}
		return count==optionlist.size()+1?true:false;
	}
	/*
	 * add options
	 */
	private int addAppraisalOptions(AppraisalOptionBean optionb){
		conn = ConnectionUtil.getConnection();
		int count = 0;
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.ADDOPTION);
			ps.setInt(1, getAppId());
			ps.setString(2,optionb.getOption());
			ps.setString(3, optionb.getEscore());
			ps.setString(4, optionb.getTscore());
			count = ps.executeUpdate();
		} catch (SQLException e) {  
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return count;
		
	}
	
	/*
	 * get app id : because i can't get the appid with sequence.currval
	 */
	private int getAppId(){
		int id = 0;
		conn = ConnectionUtil.getConnection();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(AppraisalSQLStatement.APPCURRID);
			if(rs.next())
				id = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, state, rs);
		}
		return id;
	}

	/*
	 * get all appraisals show in index page
	 */
	public List<AppraisalBean> getAllApps(){
		conn = ConnectionUtil.getConnection();
		List<AppraisalBean> list = new ArrayList<AppraisalBean>();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(AppraisalSQLStatement.GETALLAPPS);
			while(rs.next()){
				AppraisalBean app = new AppraisalBean();
				app.setId(rs.getInt(1));
				app.setTitle(rs.getString(2));
				app.setStatus(rs.getInt(3));
				if(rs.getInt(3)==0)
					app.setStatusStr("已截止");
				else 
					app.setStatusStr("进行中");
				list.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public AppraisalBean getCurrApp(int id) {
		AppraisalBean app = null;
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.CURRAPP);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				app = new AppraisalBean();
				app.setId(id);
				app.setTitle(rs.getString(2));
				String context = rs.getString(3);
				if(context != null)
					app.setContext(context);
				app.setType(rs.getString(4));
				app.setStatus(rs.getInt(5));
				if(app.getStatus()==0)
					app.setStatusStr("已截止");
				else
					app.setStatusStr("进行中");
				app.setAllowAffix(String.valueOf(rs.getInt(6)));
				if(app.getAllowAffix().equals("1")) {
					app.setAStartDate(rs.getDate(7).toString());
					app.setAEndDate(rs.getDate(8).toString());
				}
				app.setStartDate(rs.getDate(9).toString());
				app.setEndDate(rs.getDate(10).toString());
				app.setBeiping(rs.getString(11));
				app.setBeipings(rs.getString(11).split(","));
				app.setCanping(rs.getString(12));
				app.setCanpings(rs.getString(12).split(","));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		
		if(app!=null){
			app.setOptions(getOptions(id));
			app.setFiles(getFiles(id, "app"));
//			app.setIsreadyping(is_readly_ping(id));
		}
		return app;
	}
	
	private List<AppraisalOptionBean> getOptions(int appid) {
		List<AppraisalOptionBean> list = new ArrayList<AppraisalOptionBean>();
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.CURROPTIONS);
			ps.setInt(1, appid);
			rs = ps.executeQuery();
			while(rs.next()){
				AppraisalOptionBean option = new AppraisalOptionBean();
				option.setId(rs.getInt(1));
				option.setAppid(rs.getInt(2));
				option.setOption(rs.getString(3));
				option.setEscore(rs.getString(4));
				option.setTscore(rs.getString(5));
				option.setEs(rs.getString(4).split(","));
				list.add(option);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return list;
	}
	
	/*
	 *如果是人员考评就,获取被评人的信息
	 */
	public List<MuserBean> getBeipings (String[] bp){
		
		List<MuserBean> users = new ArrayList<MuserBean>();
		conn = ConnectionUtil.getConnection();
		String sql = "select * from muser where name=?";
		for(int i=0; i<bp.length; i++){
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, bp[i]);
				rs = ps.executeQuery();
				if(rs.next()){
					MuserBean u= new MuserBean();
					u.setName(bp[i]);
					u.setDept(rs.getString(4));
					u.setObligtion(rs.getString(6));
					u.setGerder(rs.getString(7));
					users.add(u);
				}
				ps.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return users;
	}
	
	public int do_answer(AppAnswerBean an) {
		conn = ConnectionUtil.getConnection();
		int count = 0;
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.DO_ANSWER);
			ps.setInt(1, an.getAppid());
			ps.setString(2, an.getOption());
			ps.setString(3, an.getBeiping());
			ps.setInt(4, an.getScore());
			
			count = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return count;
	}
	
	public int do_answers(List<AppAnswerBean> answerList,String canping,int appid) {
		int count = 1;
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.DO_ANSWER);
			
			for(int i= 0;i <answerList.size();i++){
				AppAnswerBean an = answerList.get(i);
				ps.setInt(1, an.getAppid());
				ps.setString(2, an.getOption());
				ps.setString(3, an.getBeiping());
				ps.setInt(4, an.getScore());
				ps.addBatch();
			}
			ps.executeBatch();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		canping(canping,appid);
		return count;
	}
	
	private int canping(String canping,int appid){
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.CANPING);
			ps.setString(1, canping);
			ps.setInt(2, appid);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return 0;
	}
	
	public boolean is_readly_ping(String user,int appid) {
		conn = ConnectionUtil.getConnection();
		boolean falg = false;
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.ALREADYPING);
			ps.setInt(1, appid);
			ps.setString(2, user);
			rs = ps.executeQuery();
			if(rs.next()) 
				falg = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return falg;
		
	}
	
	public DefaultCategoryDataset summary(int appid) {
		conn = ConnectionUtil.getConnection();
		DefaultCategoryDataset dataset=new DefaultCategoryDataset();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.SUMMARY);
			ps.setInt(1, appid);
			rs = ps.executeQuery();
			while(rs.next()){
				dataset.addValue(rs.getInt(3), rs.getString(1), rs.getString(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		
		return dataset;
	}
	
	public DefaultCategoryDataset aSummary(int appid) {
		conn = ConnectionUtil.getConnection();
		DefaultCategoryDataset dataset=new DefaultCategoryDataset();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.ASUMMARY);
			ps.setInt(1, appid);
			rs = ps.executeQuery();
			while(rs.next())
				dataset.addValue(rs.getInt(2), "", rs.getString(1));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		
		return dataset;
	}
	
	public List<File> getFiles(int id,String type) {
		List<File> files = new ArrayList<File>();
		conn = ConnectionUtil.getConnection();
		try {
			ps = conn.prepareStatement(AppraisalSQLStatement.FILES);
			ps.setInt(1, id);
			ps.setString(2, type);
			rs = ps.executeQuery();
			while(rs.next()) {
				String filename = rs.getString(1);
				String owner = rs.getString(2);
				String[] filenames = filename.split(",");
				for(int i=0;i<filenames.length;i++){
					File file = new File();
					file.setOwner(owner);
					file.setFname(filenames[i]);
					files.add(file);
				}
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return files;
	}
}
