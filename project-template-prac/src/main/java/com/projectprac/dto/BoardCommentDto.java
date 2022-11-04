package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardCommentDto {

	private int commentId;
	private String customerId;
	private int boardId;			// 첨부파일 고유 번호 (자동증가)
				// 첨부파일이 포함된 글번호 (참조)
	private String content;	// 사용자가 업로드한 파일 이름
	private Date regDate;	// 시스템에 저장된 파일 이름
	private boolean deleted;
	
	// 아래 세 개의 변수는 글의 논리적인 순서를 관리
	
}
