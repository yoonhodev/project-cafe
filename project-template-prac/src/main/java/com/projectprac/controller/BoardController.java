package com.projectprac.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.BoardDto;

@Controller
public class BoardController {

	@GetMapping(path = { "noticeBoard" })
	public String noticeBoard() {
		
		return "board/noticeBoard";
	}
	
	@GetMapping(path = { "eventBoard" })
	public String eventBoard() {
		
		return "board/noticeBoard";
	}
	
	@PostMapping(path = { "writeForm" })
	public String writeForm(BoardDto dto) {
		
		System.out.println(dto.getBoardId());
		System.out.println(dto.getWorkerId());
		System.out.println(dto.getWorkerName());
		System.out.println(dto.getTitle());
		System.out.println(dto.getContent());
		System.out.println(dto.getRegdate());
	//	System.out.println(dto.getDeleted());
		
		

		
		return "board/noticeBoard";
	}
	
	
}
