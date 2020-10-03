package com.acorn.escape.admin.dto;

public class AdminDto {
	private String bname;
	private String resdate;
	private String time;
	private String thema;
	private String state;
	private String blocktime;
	private String res_name;
	
	public AdminDto(String bname, String resdate, String time, String thema, String state, String blocktime,
			String res_name) {
		super();
		this.bname = bname;
		this.resdate = resdate;
		this.time = time;
		this.thema = thema;
		this.state = state;
		this.blocktime = blocktime;
		this.res_name = res_name;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public AdminDto() {
		super();
	}
	public AdminDto(String bname, String resdate, String time, String thema, String state, String blocktime) {
		super();
		this.bname = bname;
		this.resdate = resdate;
		this.time = time;
		this.thema = thema;
		this.state = state;
		this.blocktime = blocktime;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getThema() {
		return thema;
	}
	public void setThema(String thema) {
		this.thema = thema;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getBlocktime() {
		return blocktime;
	}
	public void setBlocktime(String blocktime) {
		this.blocktime = blocktime;
	}
	
}
