package com.bysj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bysj.bean.AppraisalBean;
import com.bysj.bean.AppraisalOptionBean;
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
		
		if(app!=null)
			app.setOptions(getOptions(id));
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
}
