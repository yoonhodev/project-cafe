package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.BoardCommentDto;
import com.projectprac.dto.BoardDto;

@Mapper
public interface BoardCommentMapper {
	
	@Insert("INSERT INTO comment (board_id, customer_id, content) " +
			"VALUES (#{ boardId }, #{ customerId } , #{ content })")
	//@Options(useGeneratedKeys = true, keyColumn = "commentno", keyProperty = "commentNo") // 자동증가 데이터 가져오기
	void insertComment(BoardCommentDto comment);
	
	@Select("SELECT commentId, customerId, content, regdate, deleted " +
			"FROM comment " +
			"WHERE boardId = #{ boardId }")
	List<BoardCommentDto> selectCommentByBoardNo(int boardId);


	
	



	
	
	
	
	
}
