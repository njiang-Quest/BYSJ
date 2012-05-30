package com.bysj.bean;

public class File {

	private int id;
	private String fname;
	private double fsize;
	private String utime;
	private String owner;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public double getFsize() {
		return fsize;
	}
	public void setFsize(double fsize) {
		this.fsize = fsize;
	}
	public String getUtime() {
		return utime;
	}
	public void setUtime(String utime) {
		this.utime = utime;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
}
