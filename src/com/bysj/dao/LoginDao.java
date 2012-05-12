package com.bysj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bysj.bean.MuserBean;
import com.bysj.common.ConnectionUtil;

public class LoginDao {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	public MuserBean do_login(MuserBean user){
		
		conn = ConnectionUtil.getConnection();
		
		try {
			ps = conn.prepareStatement(SQLStatement.LOGIN);
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

}
