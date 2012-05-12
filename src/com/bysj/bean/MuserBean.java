package com.bysj.bean;

public class MuserBean {
	
	private int id = 0;
	private String name;
	private String pwd;
	private int deptid;
	private int user_role_id;
	private String obligtion;
	private String gerder;
	private boolean already_vote;//对一个投票是否已经投过了
	
	public boolean isAlready_vote() {
		return already_vote;
	}
	public void setAlready_vote(boolean already_vote) {
		this.already_vote = already_vote;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getDeptid() {
		return deptid;
	}
	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}
	public int getUser_role_id() {
		return user_role_id;
	}
	public void setUser_role_id(int user_role_id) {
		this.user_role_id = user_role_id;
	}
	public String getObligtion() {
		return obligtion;
	}
	public void setObligtion(String obligtion) {
		this.obligtion = obligtion;
	}
	public String getGerder() {
		return gerder;
	}
	public void setGerder(String gerder) {
		this.gerder = gerder;
	}

}
