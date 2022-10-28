package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.mapper.BoardMapper;

import lombok.Setter;

public class BoardServiceImpl implements BoardService {

	@Setter
	private BoardMapper boardMapper;
	
	@Override
	public void writeBoard(BoardDto board) {
		
		// BoardDao boardDao = new BoardDao();
		// board.getBoardNo() --> 0

		boardMapper.insertBoard(board); // insert 하면서 boardNo 자동 생성 ( 글 번호 가져오기 필요 )

		// board.getBoardNo() --> 새로 만들어진 글번호
//		if (board.getAttachments() != null) {
//			for (BoardAttachDto attachment : board.getAttachments()) {
//				attachment.setBoardNo(board.getBoardNo()); // 새로 만들어진 글번호를 Attach 객체에 저장
//				boardDao.insertBoardAttach(attachment);
			}
	
	public List<BoardDto> showBoardList(BoardDto boardDto) {
		
		List<BoardDto> boards = boardMapper.showBoardList(boardDto);
		
		return boards;
	}
	
	public BoardDto showBoardDetail(int boardId) {
		
		BoardDto boardDetail = boardMapper.showBoardDetail(boardId);
		
		return boardDetail;
	}
	
	@Override
	public List<BoardDto> findBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<BoardDto> boards = boardMapper.selectBoardByPage(from, count);
		return boards;
		
	}

	@Override
	public int findBoardCount() {
		
		int boardCount = boardMapper.selectBoardCount();
		return boardCount;
	
	}
	
	public void deleteBoard(int boardId) {
		
		boardMapper.deleteBoard(boardId);
		
	}

		
}
	

	

