package com.bysj.bean;

public class AppraisalOptionBean {
	
	private int id;
	private int appid;
	private String option;
	private String escore;
	private String tscore;
	
	private String[] es;
	
	public String[] getEs() {
		return es;
	}
	public void setEs(String[] es) {
		this.es = es;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAppid() {
		return appid;
	}
	public void setAppid(int appid) {
		this.appid = appid;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getEscore() {
		return escore;
	}
	public void setEscore(String escore) {
		this.escore = escore;
	}
	public String getTscore() {
		return tscore;
	}
	public void setTscore(String tscore) {
		this.tscore = tscore;
	}

}
