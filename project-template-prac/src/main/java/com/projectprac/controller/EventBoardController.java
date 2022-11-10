package com.projectprac.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.projectprac.common.Util;
import com.projectprac.dto.BoardAttachDto;
import com.projectprac.dto.BoardCommentDto;
import com.projectprac.dto.BoardDto;
import com.projectprac.service.BoardService;
import com.projectprac.ui.ThePager;



@Controller
public class EventBoardController {

	private final int PAGE_SIZE = 10; 	// 한 페이지에 표시되는 데이터 개수
	private final int PAGER_SIZE = 5;	// 한 번에 표시할 페이지 번호 개수
	private final String LINK_URL = "eventBoard"; // 페이지 번호를 클릭했을 때 이동할 페이지 경로
	
	
	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
//	@GetMapping(path = { "noticeBoard" })
//	public String noticeBoard() {
//		
//		return "board/noticeBoard";
//	}
	
	@PostMapping(path = { "writeEventBoard" })
	public String writeEventBoard(BoardDto board) {
	
//		MultipartFile attach = req.getFile("attach");
//		
//		if (attach != null) {
//			ServletContext application = req.getServletContext();
//			String path = application.getRealPath("/board-attachments");
//			String fileName = attach.getOriginalFilename();
//			if (fileName != null && fileName.length() > 0) {
//				String uniqueFileName = Util.makeUniqueFileName(fileName);
//				try {
//					attach.transferTo(new File(path, uniqueFileName));
//					
//					ArrayList<BoardAttachDto> attachments = new ArrayList<>();
//					BoardAttachDto attachment = new BoardAttachDto();
//					attachment.setUserFileName(fileName);
//					attachment.setSavedFileName(uniqueFileName);
//					attachments.add(attachment);
//					board.setAttachments(attachments);
//				
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		}
		
		
		
		boardService.writeEventBoard(board);
		
		return "redirect:eventBoard";
	}
	
	@GetMapping(path = { "eventBoard" })
	public String showEventBoardList(@RequestParam(defaultValue = "1")int pageNo, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자로 대체 )
		// 2. 데이터 처리 ( 데이터 조회 )		

		List<BoardDto> boards = boardService.findEventBoardByPage(pageNo, PAGE_SIZE);
		int boardCount = boardService.findEventBoardCount();
		
		ThePager pager = new ThePager(boardCount, pageNo, PAGE_SIZE, PAGER_SIZE, LINK_URL);

		// 3. View에서 읽을 수 있도록 데이터 저장
		model.addAttribute("boards", boards);
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo", pageNo);

		
		// 4. View or Controller로 이동
		return "board/eventBoard"; 	// /WEB-INF/views/ + board/list + .jsp
	}
	

	
	
	
	@GetMapping(path = { "/eventBoardDetail" })
	public String showEventBoardDetail(@RequestParam(defaultValue = "-1") int boardId, 
								  @RequestParam(defaultValue = "-1") int pageNo,
								  HttpSession session, 
								  Model model) {	
		
		// 1. 요청 데이터 읽기 ( 전달인자로 대체 )
		if (boardId == -1 || pageNo == -1) { // 요청 데이터가 잘못된 경우
			return "redirect:board/eventBoard";
		}
		
		BoardDto boardDetail = boardService.showBoardDetail(boardId);
		
		if (boardDetail == null) { // 조회되지 않은 경우 (글 번호가 잘못되었거나 또는 삭제된 글인 경우)
			return "redirect:board/eventBoard";
		}
		
		// 3. View에서 읽을 수 있도록 데이터 전달
		model.addAttribute("boardDetail", boardDetail);
		model.addAttribute("pageNo", pageNo);
		
		// 4. View 또는 Controller로 이동
		return "board/eventBoardDetail";
	}
	
	@GetMapping(path = { "/deleteEvent/{boardId}" })
	public String deleteEventBoard(@PathVariable("boardId") int boardId,
							  	   @RequestParam (defaultValue = "-1")int pageNo,
							  	   Model model) { //Model --> jsp로 데이터 전달할때 씀
		
		if (pageNo == -1) {
			//return "redirect:list.action";
			model.addAttribute("error_type", "delete");
			model.addAttribute("message", "잘못된 요청 : 글번호 또는 페이지 번호가 없습니다.");		
			return "board/error"; // WEB-ING/views/+ board/error + .jsp (오류가 나면 board/error페이지로 보냄) 
		}
		
		boardService.deleteEventBoard(boardId);
		
		// 3. View에서 사용할 수 있도록 데이터 저장
		
		// 4. View 또는 다른 Controller로 이동
		
		return "redirect:/eventBoard?pageNo=" + pageNo;
	}
	
	@GetMapping(path = {"/editEvent" })
	public String showBoardEventEditForm(@RequestParam(defaultValue = "-1")int boardId, 
									@RequestParam(defaultValue = "-1")int pageNo, 
									Model model) {
								
		if (boardId == -1 || pageNo == -1 ) {
			model.addAttribute("error_type", "edit");
			model.addAttribute("message", "글번호 또는 페이지 번호가 없습니다.");
			return "board/error";	
		}
			
		BoardDto board = boardService.findEventBoardByBoardNo(boardId);
	
		// View에게 전달할 데이터 저장
		model.addAttribute("board", board);
		model.addAttribute("boardId", boardId);
		model.addAttribute("pageNo", pageNo);		
		 return "board/editEvent";  // WEB-INF/views/ + board/edit + .jsp
		//return "redirect:edit.action?boardNo=" + boardNo + "&pageNo=" + pageNo;
	}
	
	@PostMapping(path = {"/editEvent" })
	public String modifyEventBoard(@RequestParam(defaultValue = "-1") int pageNo,
							  @RequestParam(defaultValue = "-1") int boardId,
							  BoardDto board,
							  Model model) {
		if (boardId == -1 || pageNo == -1 ) {
			model.addAttribute("error_type", "edit");
			model.addAttribute("message", "글번호 또는 페이지 번호가 없습니다.");
			return "board/error";	
		}
		boardService.modifyEventBoard(board);
		
		//return "redirect:noticeBoardDetail?boardId=" + board.getBoardId() + "&pageNo=" + pageNo;
		//return "redirect:/noticeBoard?pageNo=" + pageNo;

		return "redirect:/eventBoardDetail?boardId=" + boardId + "&pageNo=" + pageNo;

	}
	
	
	@PostMapping(path = {"/write-comment.action"})
	public String writeComment(BoardCommentDto commentDto, int pageNo, int boardId) {
		// 1. 요청 데이터 읽기 ( 전달인자로 대체 )
		// 2. 요청 처리
		boardService.writeComment(commentDto); // commentDto에 자동 증가된 commentNo가 저장됨.
		// 최상위 댓글의 글번호를 그룹번호로 저장
		//boardService.updateGroupNo(commentDto.getCommentId(), commentDto.getCommentNo());
		// 3. View에서 읽을 수 있도록 데이터 저장
		// 4. View 또는 다른 컨트롤러로 이동
		//return String.format("redirect:detail.action?boardNo=%d&pageNo=%d",commentDto.getBoardNo(), pageNo);
		return "redirect:/eventBoardDetail?boardId=" + boardId + "&pageNo=" + pageNo;	
	}
	
	@GetMapping(path = { "/comment-list.action" })
	public String showCommentList(int boardId, Model model) {
		
		List<BoardCommentDto> comments = boardService.findBoardCommentByBoard(boardId);
		
		// View에서 일긍ㄹ 수 있도록 데이터 저장
		model.addAttribute("comments", comments);
		return "board/comment-list";	
		
	}
	
	@GetMapping(path = {"/delete-comment{commentId}"})
	public String deleteComment(@RequestParam(defaultValue = "-1") int commentId, int boardId, int pageNo) {
		System.out.println("컨트롤러");
		boardService.deleteComment(commentId);
		// 1. 요청 데이터 읽기 (전달인자로 대체)
		if (commentId == -1) {
			return "fail"; // @ResponseBody 떼매 "fail" 문자열을 응답
		}
		
		// 2. 데이터 처리
		
		
		return "redirect:/eventBoardDetail?boardId=" + boardId + "&pageNo=" + pageNo;		
		//return "redirect:/eventBoard?pageNo=" + pageNo;
		//return "success"; // @ResponseBody 떼매 >> 안됨 (WEB-INF/views/ + success + .jsp)
						  // @ResponseBody 떼매 "success" 문자열을 응답 
	}
	
	@PostMapping(path = { "/update-comment.action" })
	@ResponseBody String updateComment(BoardCommentDto comment) {
		
		boardService.updateComment(comment);
		
		return "success";
	}
	
	
	
	
	
	
	
}
