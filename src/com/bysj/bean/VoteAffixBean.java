package com.bysj.bean;

public class VoteAffixBean {

	private int vote_affix_id;
	private int voteid;
	private String aoption;
	private String pathName;
	
	public int getVote_affix_id() {
		return vote_affix_id;
	}
	public void setVote_affix_id(int vote_affix_id) {
		this.vote_affix_id = vote_affix_id;
	}
	public int getVoteid() {
		return voteid;
	}
	public void setVoteid(int voteid) {
		this.voteid = voteid;
	}

	public String getAoption() {
		return aoption;
	}
	public void setAoption(String aoption) {
		this.aoption = aoption;
	}
	public String getPathName() {
		return pathName;
	}
	public void setPathName(String pathName) {
		this.pathName = pathName;
	}
}
