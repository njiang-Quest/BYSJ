package com.bysj.bean;

import java.util.List;

public class AppraisalBean {
	private int id;
	private String title;
	private String context;
	private String type;
	private int status;
	private String allowAffix;
	private String aStartDate;
	private String aEndDate;
	private String startDate;
	private String endDate;
	private String beiping;
	private String canping;
	
	private String[] beipings;
	private String[] canpings;
	private String statusStr;
	
	private List<AppraisalOptionBean> options;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getAllowAffix() {
		return allowAffix;
	}

	public void setAllowAffix(String allowAffix) {
		this.allowAffix = allowAffix;
	}

	public String getAStartDate() {
		return aStartDate;
	}

	public void setAStartDate(String startDate) {
		aStartDate = startDate;
	}

	public String getAEndDate() {
		return aEndDate;
	}

	public void setAEndDate(String endDate) {
		aEndDate = endDate;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getBeiping() {
		return beiping;
	}

	public void setBeiping(String beiping) {
		this.beiping = beiping;
	}

	public String getCanping() {
		return canping;
	}

	public void setCanping(String canping) {
		this.canping = canping;
	}

	public String[] getBeipings() {
		return beipings;
	}

	public void setBeipings(String[] beipings) {
		this.beipings = beipings;
	}

	public String[] getCanpings() {
		return canpings;
	}

	public void setCanpings(String[] canpings) {
		this.canpings = canpings;
	}

	public List<AppraisalOptionBean> getOptions() {
		return options;
	}

	public void setOptions(List<AppraisalOptionBean> options) {
		this.options = options;
	}

	public String getStatusStr() {
		return statusStr;
	}

	public void setStatusStr(String statusStr) {
		this.statusStr = statusStr;
	}
}