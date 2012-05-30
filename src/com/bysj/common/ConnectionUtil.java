package com.bysj.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionUtil {
	
	//  1 ��̬��,�������ݿ�����
	static{
		
		try {
			
			//Oracle jdbc����
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//�ӣѣ̡��ӣ�����򡡣���㡡����
//			Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
			
			//MySql jdbc
//			Class.forName("org.gjt.mm.mysql.Driver");
			
			//odbc������
//			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
			//�ӣѣ̡��ӣ������jtds ����㡡����
//			Class.forName("net.sourceforge.jtds.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}	
	}
	
	/**
	 *  2 ��ȡ���ݿ����Ӷ���
	 * @return
	 */
	public static Connection getConnection(){
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:BYSJ","jqy","jqy");
//			conn = DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;databaseName=BBS","sa","123");
//			conn = DriverManager.getConnection("jdbc:mysql:localhost:3306/bbs","root","root");		
//			conn = DriverManager.getConnection("jdbc:odbc:bbs","sa","123");			
//			conn = DriverManager.getConnection("jdbc:jtds:sqlserver://localhost:1433;databaseName=BBS","sa","123");
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}

	
	/**
	 * �ر�����
	 * @param conn
	 * @param state
	 * @param rs
	 */
	public static void freeConnection(Connection conn,Statement state,ResultSet rs){
		
		if(rs != null ){
			try {
				rs.close();			
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				if(state != null)
					try {
						state.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				try {
					if(conn != null && !conn.isClosed())
						try {
							conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}
	
	public static void main(String[] args){
		System.out.println(ConnectionUtil.getConnection());
		String i ="";
	}
}