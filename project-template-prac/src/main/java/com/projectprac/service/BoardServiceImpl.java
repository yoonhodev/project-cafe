package com.projectprac.service;

import com.projectprac.dto.BoardDto;
import com.projectprac.mapper.BoardMapper;

import lombok.Setter;

public class BoardServiceImpl implements BoardService {

	@Setter
	private BoardMapper boardMapper;
	
	@Override
	public void writeBoard(BoardDto board) {
		
		// BoardDao boardDao = new BoardDao();
		// board.getBoardNo() --> 0
		System.out.println("1");
		boardMapper.insertBoard(board); // insert 하면서 boardNo 자동 생성 ( 글 번호 가져오기 필요 )
		System.out.println("2");
		// board.getBoardNo() --> 새로 만들어진 글번호
//		if (board.getAttachments() != null) {
//			for (BoardAttachDto attachment : board.getAttachments()) {
//				attachment.setBoardNo(board.getBoardNo()); // 새로 만들어진 글번호를 Attach 객체에 저장
//				boardDao.insertBoardAttach(attachment);
			}
		}
	

