package com.projectprac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectprac.dto.BoardDto;
import com.projectprac.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	@GetMapping(path = { "noticeBoard" })
	public String noticeBoard() {
		
		return "board/noticeBoard";
	}
	
	@GetMapping(path = { "eventBoard" })
	public String eventBoard() {
		
		return "board/noticeBoard";
	}
	
	@PostMapping(path = { "writeBoard" })
	public String writeBoard(BoardDto board) {
		
		
		
		System.out.println(board.getBoardId());
		System.out.println(board.getWorkerId());
	//	System.out.println(dto.getWorkerName());
		System.out.println(board.getTitle());
		System.out.println(board.getContent());
		System.out.println(board.getRegdate());
	//	System.out.println(board.getDeleted());
		
		boardService.writeBoard(board);
		
		

		
		return "board/noticeBoard";
	}
	
	
}
