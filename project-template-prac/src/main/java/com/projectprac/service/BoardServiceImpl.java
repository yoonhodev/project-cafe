package com.projectprac.service;

import java.util.List;

import javax.xml.stream.events.Comment;

import com.projectprac.dto.BoardCommentDto;
import com.projectprac.dto.BoardDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.mapper.BoardCommentMapper;
import com.projectprac.mapper.BoardMapper;

import lombok.Setter;

public class BoardServiceImpl implements BoardService {

	@Setter
	private BoardMapper boardMapper;
	
	@Setter
	private BoardCommentMapper commentMapper;
	
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
	
	
	
	@Override
	public void writeEventBoard(BoardDto board) {

		boardMapper.insertEventBoard(board);
		
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
	public BoardDto showEventBoardDetail(int boardId) {

		BoardDto boardDetail = boardMapper.showEventBoardDetail(boardId);
		
		return null;
	}

	
	@Override
	public List<BoardDto> findBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<BoardDto> boards = boardMapper.selectBoardByPage(from, count);
		return boards;
		
	}
	
	@Override
	public List<BoardDto> findEventBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<BoardDto> boards = boardMapper.selectEventBoardByPage(from, count);
		return boards;
		
	}


	@Override
	public int findBoardCount() {
		
		int boardCount = boardMapper.selectBoardCount();
		return boardCount;
	
	}
	@Override
	public int findEventBoardCount() {
		
		int boardCount = boardMapper.selectEventBoardCount();
		return boardCount;
		
	}


	
	public void deleteBoard(int boardId) {
		
		boardMapper.deleteBoard(boardId);
		
	}
	
	@Override
	public void deleteEventBoard(int boardId) {
		
		boardMapper.deleteEventBoard(boardId);
		
	}

	@Override
	public BoardDto findBoardByBoardNo(int boardId) {
		
		BoardDto board = boardMapper.selectBoardByBoardNo(boardId);
		
		return board;
	}
	
	@Override
	public BoardDto findEventBoardByBoardNo(int boardId) {
		
		BoardDto board = boardMapper.selectEventBoardByBoardNo(boardId);
		
		return board;
	}


	@Override
	public void modifyBoard(BoardDto board) {

		boardMapper.updateBoard(board);
		
	}

	@Override
	public void modifyEventBoard(BoardDto board) {
		
		boardMapper.updateEventBoard(board);
	
	}

	@Override
	public void writeComment(BoardCommentDto comment) {

		commentMapper.insertComment(comment);

		
	}

	@Override
	public List<BoardCommentDto> findBoardCommentByBoard(int boardId) {
		List<BoardCommentDto> comments = commentMapper.selectCommentByBoardNo(boardId);
		
		System.out.println(boardId);
		
		return comments;
	}







	










		
}
	

	

