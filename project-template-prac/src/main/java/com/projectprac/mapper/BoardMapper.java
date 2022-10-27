package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.BoardDto;

@Mapper
public interface BoardMapper {

	@Insert("INSERT INTO board (title, content) " +
			"VALUES (#{ title }, #{ content })")
	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
	void insertBoard(BoardDto board);

	
	
	@Select("select board_id boardid, worker_id workerid, title, content, regdate, deleted from board ")
	List<BoardDto> showBoardList(BoardDto boardDto);
	
	
}
