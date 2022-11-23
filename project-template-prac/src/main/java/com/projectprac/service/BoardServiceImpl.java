package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardAttachDto;
import com.projectprac.dto.BoardCommentDto;
import com.projectprac.dto.BoardDto;
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
		
		boardMapper.insertBoard(board); // insert 하면서 boardNo 자동 생성 ( 글 번호 가져오기 필요 )
	
	}
	
	
	@Override
	public void writeEventBoard(BoardDto board) {

		boardMapper.insertEventBoard(board);
		board.getBoardId();
		
		System.out.println(board.getBoardId());
		System.out.println("11111111111111");
		if (board.getAttachments() != null) {
			for (BoardAttachDto attachment : board.getAttachments()) {
				attachment.setBoardId(board.getBoardId()); // 새로 만들어진 글번호를 Attach 객체에 저장
				
				boardMapper.insertBoardAttach(attachment);
				
			}
		}
		
	}

	
	public BoardDto showBoardDetail(int boardId) {
		
		BoardDto boardDetail = boardMapper.showBoardDetail(boardId);
		
		return boardDetail;
	}
	
	@Override
	public BoardDto showEventBoardDetail(int boardId) {

		BoardDto boardDetail = boardMapper.showEventBoardDetail(boardId);
		
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
	public List<BoardDto> findEventBoardByPage(int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<BoardDto> boards = boardMapper.selectEventBoardByPage(from, count);
		return boards;
		
	}
	
	@Override
	public List<BoardDto> findSearchedEventBoardByPage(String keyword, int pageNo, int pageSize) {
		
		int from = (pageNo - 1) * pageSize;
		int count = pageSize;
		
		List<BoardDto> searchedBoard = boardMapper.selectSerchedEventBoardByPage(from, count, keyword);
		
		return searchedBoard;
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
	
	@Override
	public int findSearchedEventBoardCount(String keyword) {
		int searchedBoardCount = boardMapper.selectSerchedEventBoardCount(keyword);
		System.out.println(searchedBoardCount);
		return searchedBoardCount;
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
	public BoardDto findEventBoardByBoardNo(int boardId) {  /// 게시글 수정과 관련된 메소드
		
		BoardDto board = boardMapper.selectEventBoardByBoardNo(boardId);
		
		if (board != null) {
		List<BoardAttachDto> attachments = boardMapper.selectBoardAttachByBoardNo(boardId);
		board.setAttachments(attachments);
		}
		
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
		
		return comments;
		
	}

	@Override
	public void deleteComment(int commentId) {
		
		commentMapper.deleteComment(commentId);		
		
	}

	@Override
	public void updateComment(BoardCommentDto comment) {
		
		commentMapper.updateComment(comment);
		
	}

	@Override
	public BoardAttachDto findBoardAttachByAttachNo(int attachId) {
		
		BoardAttachDto attachment = boardMapper.selectBoardAttachByAttachNo(attachId);
		
		return attachment;
		
	}

	@Override
	public void increaseBoardReadCount(int boardId) {

		boardMapper.updateBoardReadCount(boardId);
		
	}

	@Override
	public int findCommentCount(int boardId) {
		int commentCount = boardMapper.selectCommentCount();
		
		return commentCount;
		
	}

	@Override
	public int findEventCommentCount(int boardId) {
		
		int commentEventCount = boardMapper.selectCommentEventCount(boardId);
		
		return commentEventCount;
		
	}



	








	










		
}
	

	

