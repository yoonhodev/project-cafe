package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.BoardDto;


public interface BoardService {

	void writeBoard(BoardDto board);
	
	List<BoardDto> showBoardList(BoardDto boardDto);

}



