package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardCommentDto {

	private int commentId;
	private int boardId;
	private String customerId;
	private String content;	// 사용자가 업로드한 파일 이름
	private Date regDate;	// 시스템에 저장된 파일 이름
	private boolean deleted;
	
}
