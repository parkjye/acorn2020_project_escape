package com.acorn.escape.admin.dto;

public class AdminDto {
	private String aid;
	private String apwd;
	
	public AdminDto() {}

	public AdminDto(String aid, String apwd) {
		super();
		this.aid = aid;
		this.apwd = apwd;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getApwd() {
		return apwd;
	}

	public void setApwd(String apwd) {
		this.apwd = apwd;
	};
	
	
}
