package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardDto;


public interface BoardService {

	void writeBoard(BoardDto board);
	
	List<BoardDto> showBoardList(BoardDto boardDto);
	
	BoardDto showBoardDetail(int boardId);

	
	int findBoardCount();

	List<BoardDto> findBoardByPage(int pageNo, int pageSize);

	void deleteBoard(int boardId);

	BoardDto findBoardByBoardNo(int boardId);

	void modifyBoard(BoardDto board);
	
	
}



