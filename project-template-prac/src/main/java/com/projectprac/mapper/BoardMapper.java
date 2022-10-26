package com.projectprac.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

import com.projectprac.dto.BoardDto;

@Mapper
public interface BoardMapper {

	@Insert("INSERT INTO board (title, content) " +
			"VALUES (#{ title }, #{ content })")
	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
	void insertBoard(BoardDto board);
	
	
}
