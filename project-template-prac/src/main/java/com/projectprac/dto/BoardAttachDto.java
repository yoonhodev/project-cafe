package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardAttachDto {

	private int boardId;
	private int workerId;
	private String title;
	private String content;
	private Date regdate;
	private boolean deleted;
	private boolean boardType;

	
}
