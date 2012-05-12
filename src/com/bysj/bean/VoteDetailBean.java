package com.bysj.bean;

import java.util.Map;

public class VoteDetailBean {
	private int detailId;
	private int voteId;
	private String option;
	private int cont=0;
	private int percentage=0;
	private String toupiaoren;
	private String[] toupiaorens;
	

	public String getToupiaoren() {
		return toupiaoren;
	}
	public void setToupiaoren(String toupiaoren) {
		this.toupiaoren = toupiaoren;
	}
	public String[] getToupiaorens() {
		return toupiaorens;
	}
	public void setToupiaorens(String[] toupiaorens) {
		this.toupiaorens = toupiaorens;
	}
	public int getDetailId() {
		return detailId;
	}
	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}
	public int getVoteId() {
		return voteId;
	}
	public void setVoteId(int voteId) {
		this.voteId = voteId;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public int getCont() {
		return cont;
	}
	public void setCont(int cont) {
		this.cont = cont;
	}
	public int getPercentage() {
		return percentage;
	}
	public void setPercentage(int percentage) {
		this.percentage = percentage;
	}
	
}
