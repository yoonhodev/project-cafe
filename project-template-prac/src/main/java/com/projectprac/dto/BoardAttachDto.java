package com.projectprac.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardAttachDto {

	private int attachId;			// 첨부파일 고유 번호 (자동증가)
	private int boardId;			// 첨부파일이 포함된 글번호 (참조)
	private String userFileName;	// 사용자가 업로드한 파일 이름
	private String savedFileName;	// 시스템에 저장된 파일 이름
	
	
}
