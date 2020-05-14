package com.team.dto;

import java.util.Date;

import lombok.Data;

@Data
public class loginDTO {
	private String userId;
	private String userPwd;
	private String userName;
	private int userAge;
	private String userAddr;
	private String userGender;
	private Date userBirth;
	private String userEmail;
}
