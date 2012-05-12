package com.bysj.bean;

import java.util.List;
import java.util.Map;

public class VoteBean {
	private int voteId;
	private String title;
	private String context;
	private String beginTime;
	private String endTime;
	private int optional;
	private String options;
	private int total_tickets;
	private String[] optionList;
	private int status;
	private String strStatus;
	private String faqiren;
	private String youquanren;
	private List<VoteDetailBean> voteDetail;
	private Map<String,String> affixFiles;
	
	public Map<String, String> getAffixFiles() {
		return affixFiles;
	}
	public void setAffixFiles(Map<String, String> affixFiles) {
		this.affixFiles = affixFiles;
	}
	public String getFaqiren() {
		return faqiren;
	}
	public void setFaqiren(String faqiren) {
		this.faqiren = faqiren;
	}
	public String getYouquanren() {
		return youquanren;
	}
	public void setYouquanren(String youquanren) {
		this.youquanren = youquanren;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getOptional() {
		return optional;
	}
	public void setOptional(int optional) {
		this.optional = optional;
	}
	public String getOptions() {
		return options;
	}
	public void setOptions(String options) {
		this.options = options;
	}
	public int getTotal_tickets() {
		return total_tickets;
	}
	public void setTotal_tickets(int total_tickets) {
		this.total_tickets = total_tickets;
	}
	public String[] getOptionList() {
		return optionList;
	}
	public void setOptionList(String[] optionList) {
		this.optionList = optionList;
	}
	public int getVoteId() {
		return voteId;
	}
	public void setVoteId(int voteId) {
		this.voteId = voteId;
	}
	public String getStrStatus() {
		return strStatus;
	}
	public void setStrStatus(String strStatus) {
		this.strStatus = strStatus;
	}
	public List<VoteDetailBean> getVoteDetail() {
		return voteDetail;
	}
	public void setVoteDetail(List<VoteDetailBean> voteDetail) {
		this.voteDetail = voteDetail;
	}

}
