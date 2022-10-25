package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDto {

	private int boardId;
	private int workerId;
	private String workerName;
	private String title;
	private String content;
	private Date regdate;
	private boolean deleted;
	
	
}
