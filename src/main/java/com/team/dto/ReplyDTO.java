package com.team.dto;

import java.sql.Date;

public class ReplyDTO {
	private int num;
	private String userid;
	private String content;
	private Date rdate;
	private int step;
	private int indent;
	private int idgroup;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getIndent() {
		return indent;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}

	public int getIdgroup() {
		return idgroup;
	}

	public void setIdgroup(int idgroup) {
		this.idgroup = idgroup;
	}

}
