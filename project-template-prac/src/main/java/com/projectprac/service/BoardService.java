package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardDto;


public interface BoardService {

	void writeBoard(BoardDto board);
	
	void writeEventBoard(BoardDto board);
	
	List<BoardDto> showBoardList(BoardDto boardDto);
	
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

	

	


	
	
	
}



