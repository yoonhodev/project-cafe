package com.projectprac.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardDto {

	private int boardId;
	private int workerId;
	private String title;
	private String content;
	private Date regdate;
	private boolean deleted;
	private boolean boardType;
	
	private List<BoardAttachDto> attachments;

	
}
