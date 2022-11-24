package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardAttachDto;
import com.projectprac.dto.BoardCommentDto;
import com.projectprac.dto.BoardDto;


public interface BoardService {

	void writeBoard(BoardDto board);
	
	void writeEventBoard(BoardDto board);
	
	BoardDto showBoardDetail(int boardId);
	
	BoardDto showEventBoardDetail(int boardId);
	
	int findBoardCount();

	int findEventBoardCount();
	
	List<BoardDto> findBoardByPage(int pageNo, int pageSize);

	void deleteBoard(int boardId);
	
	void deleteEventBoard(int boardId);

	BoardDto findBoardByBoardNo(int boardId);
	
	BoardDto findEventBoardByBoardNo(int boardId);

	void modifyBoard(BoardDto board);
	
	void modifyEventBoard(BoardDto board);

	List<BoardDto> findEventBoardByPage(int pageNo, int pageSize);

	BoardAttachDto findBoardAttachByAttachNo(int attachId);
	
	//댓글 시작
	public List<BoardCommentDto> findBoardCommentByBoard(int boardId);

	void writeComment(BoardCommentDto comment);

	void deleteComment(int commentId);

	void updateComment(BoardCommentDto comment);
	//댓글 끝

	void increaseBoardReadCount(int boardId);

	int findCommentCount(int boardId);

	int findEventCommentCount(int boardId);

	List<BoardDto> findSearchedEventBoardByPage(String keyword, int pageNo, int pAGE_SIZE);

	int findSearchedEventBoardCount(String keyword);

}



