package com.bysj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bysj.bean.MessageBean;
import com.bysj.bean.MuserBean;
import com.bysj.common.ConnectionUtil;

public class LoginDao {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	public MuserBean do_login(MuserBean user){
		
		conn = ConnectionUtil.getConnection();
		
		try {
			ps = conn.prepareStatement(VoteSQLStatement.LOGIN);
			ps.setString(1, user.getName());
			ps.setString(2, user.getPwd());
			
			rs = ps.executeQuery();
			
			if(rs.next()){
				user.setId(rs.getInt(1));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			ConnectionUtil.freeConnection(conn, ps, rs);
		}
		return user;
	}
	
	public List<MessageBean> getMessages(String username){
		List<MessageBean> ms = new ArrayList<MessageBean>();
		conn = ConnectionUtil.getConnection();
		String sql = "select * from message where receives like '%"+username+"%'";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MessageBean m= new MessageBean();
				m.setId(rs.getInt(1));
				m.setApp(rs.getInt(4));
				m.setTime(rs.getDate(2).toString());
				m.setContent(rs.getString(5));
				ms.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ms;
	}

}
