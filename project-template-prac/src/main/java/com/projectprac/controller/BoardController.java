package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.BoardDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
//	@GetMapping(path = { "noticeBoard" })
//	public String noticeBoard() {
//		
//		return "board/noticeBoard";
//	}
	
	@GetMapping(path = { "eventBoard" })
	public String eventBoard() {
		
		return "board/noticeBoard";
	}
	
	@PostMapping(path = { "writeBoard" })
	public String writeBoard(BoardDto board) {
		
		boardService.writeBoard(board);
		
		return "board/noticeBoard";
	}
	
	@GetMapping(path = { "noticeBoard" })
	public String showBoardList(@RequestParam(defaultValue = "1") int pageNo, Model model, BoardDto boardDto ) {
		// 1. 요청 데이터 읽기 ( 전달인자로 대체 )
		// 2. 데이터 처리 ( 데이터 조회 )		

		List<BoardDto> boards = boardService.showBoardList(boardDto);
		
		// 3. View에서 읽을 수 있도록 데이터 저장
		model.addAttribute("boards", boards);
;
		
		// 4. View or Controller로 이동
		return "board/noticeBoard"; 	// /WEB-INF/views/ + board/list + .jsp
	}
	
	
}
