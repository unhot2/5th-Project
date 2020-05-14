package com.team.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class boardDTO {
	private int id, hit, idgroup, step, indent;
	private String name, title, content;
	private Timestamp savedate;
}
