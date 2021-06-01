package com.cos.ajax;

public class UserDto {
	private String username;
	private String pasword;
	
	@Override
	public String toString() {
		return "UserDto [username=" + username + ", pasword=" + pasword + "]";
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasword() {
		return pasword;
	}
	public void setPasword(String pasword) {
		this.pasword = pasword;
	}

	
	
}
