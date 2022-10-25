package com.projectprac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.boardDto;

@Controller
public class boardController {

	@GetMapping(path = { "noticeBoard" })
	public String noticeBoard() {
		
		return "board/noticeBoard";
	}
	
	@GetMapping(path = { "eventBoard" })
	public String eventBoard() {
		
		return "board/noticeBoard";
	}
	
	@PostMapping(path = { "board" })
	public String registWriteForm(boardDto dto) {
		
		System.out.println(dto.getTitle());
		System.out.println(dto.getWriter());
		
		return "board/write";
	}
	
	
}
