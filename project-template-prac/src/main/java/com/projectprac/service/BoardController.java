package com.projectprac.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.BoardDto;
import com.projectprac.service.BoardService;
import com.projectprac.ui.ThePager;

@Controller
public class BoardController {

	private final int PAGE_SIZE = 10; 	// 한 페이지에 표시되는 데이터 개수
	private final int PAGER_SIZE = 5;	// 한 번에 표시할 페이지 번호 개수
	private final String LINK_URL = "noticeBoard"; // 페이지 번호를 클릭했을 때 이동할 페이지 경로
	
	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	@PostMapping(path = { "writeBoard" })
	public String writeBoard(BoardDto board) {
	
		boardService.writeBoard(board);
		
		return "redirect:noticeBoard";
	}
	
	@GetMapping(path = { "noticeBoard" })
	public String showBoardList(@RequestParam(defaultValue = "1")int pageNo, Model model) {

		List<BoardDto> boards = boardService.findBoardByPage(pageNo, PAGE_SIZE);
		int boardCount = boardService.findBoardCount();
		
		ThePager pager = new ThePager(boardCount, pageNo, PAGE_SIZE, PAGER_SIZE, LINK_URL);

		model.addAttribute("boards", boards);
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo", pageNo);
		
		return "board/noticeBoard"; 	// /WEB-INF/views/ + board/list + .jsp
	}
	
	@GetMapping(path = { "/noticeBoardDetail" })
	public String showBoardDetail(@RequestParam(defaultValue = "-1") int boardId, 
								  @RequestParam(defaultValue = "-1") int pageNo,
								  HttpSession session, 
								  Model model) {	
		
		if (boardId == -1 || pageNo == -1) { // 요청 데이터가 잘못된 경우
			return "redirect:noticeBoard";
		}
	
		ArrayList<Integer> readList = (ArrayList<Integer>)session.getAttribute("read-list");
		if (readList == null) {
			readList = new ArrayList<>();
			session.setAttribute("read-list", readList);
		}
		
		if (!readList.contains(boardId)) {
			boardService.increaseBoardReadCount(boardId);
			readList.add(boardId);
		}
		
		BoardDto boardDetail = boardService.showBoardDetail(boardId);
		
		int commentCount = boardService.findCommentCount(boardId);
		
		model.addAttribute("commentCount", commentCount);
		model.addAttribute("boardDetail", boardDetail);
		model.addAttribute("pageNo", pageNo);
		
		return "board/noticeBoardDetail";
	}
	
	
	@GetMapping(path = { "/delete/{boardId}" })
	public String deleteBoard(@PathVariable("boardId") int boardId,
							  @RequestParam (defaultValue = "-1")int pageNo,
							  Model model) { //Model --> jsp로 데이터 전달할때 씀
		
		if (pageNo == -1) {
			//return "redirect:list.action";
			model.addAttribute("error_type", "delete");
			model.addAttribute("message", "잘못된 요청 : 글번호 또는 페이지 번호가 없습니다.");		
			return "board/error"; // WEB-ING/views/+ board/error + .jsp (오류가 나면 board/error페이지로 보냄) 
		}
		
		boardService.deleteBoard(boardId);
		
		return "redirect:/noticeBoard?pageNo=" + pageNo;
	}
	
	
	@GetMapping(path = {"/edit" })
	public String showBoardEditForm(@RequestParam(defaultValue = "-1")int boardId, 
									@RequestParam(defaultValue = "-1")int pageNo, 
									Model model) {
								
		if (boardId == -1 || pageNo == -1 ) {
			model.addAttribute("error_type", "edit");
			model.addAttribute("message", "글번호 또는 페이지 번호가 없습니다.");
			return "board/error";	
		}
			
		BoardDto board = boardService.findBoardByBoardNo(boardId);

		// View에게 전달할 데이터 저장
		model.addAttribute("board", board);
		model.addAttribute("boardId", boardId);
		model.addAttribute("pageNo", pageNo);		
		 return "board/edit";  // WEB-INF/views/ + board/edit + .jsp
		//return "redirect:edit.action?boardNo=" + boardNo + "&pageNo=" + pageNo;
	}
	
	@PostMapping(path = {"/edit" })
	public String modifyBoard(@RequestParam(defaultValue = "-1") int pageNo,
							  @RequestParam(defaultValue = "-1") int boardId,
							  BoardDto board,
							  Model model) {
		if (boardId == -1 || pageNo == -1 ) {
			model.addAttribute("error_type", "edit");
			model.addAttribute("message", "글번호 또는 페이지 번호가 없습니다.");
			return "board/error";	
		}
		boardService.modifyBoard(board);

		return "redirect:/noticeBoardDetail?boardId=" + boardId + "&pageNo=" + pageNo;

	}	
	
}
