package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.BoardDto;

@Mapper
public interface BoardMapper {

//	@Insert("INSERT INTO board (b.title, b.content, ba.worker_name workername) " +
//			"FROM board b " +
//			"LEFT OUTER JOIN worker ba " +
//			"ON b.worker_id workerid = ba.worker_id workderid " +
//			"VALUES (#{ title }, #{ content }, #{ worker })")
//	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
//	void insertBoard(BoardDto board);

	

	@Insert("INSERT INTO board (title, content) " +
			"VALUES (#{ title }, #{ content })")
	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
	void insertBoard(BoardDto board);

	@Select("select board_id boardid, worker_id workerid, title, content, regdate, deleted from board order by boardid DESC ")
	List<BoardDto> showBoardList(BoardDto boardDto);
	
	@Select("select board_id boardid, worker_id workerid, title, content, regdate, deleted from board where board_id = #{ boardId }")
	BoardDto showBoardDetail(int boardId);
	
	@Select("SELECT board_id boardid, worker_id workerid, title, regdate, deleted " +
			"FROM board " +
			"ORDER BY boardid DESC " + // 최신 글이 앞에 보이도록 조회
			"LIMIT #{ from }, #{ count } ")
	List<BoardDto> selectBoardByPage(@Param("from") int from, @Param("count") int count);


	@Select("select count(*) from board")
	public int selectBoardCount();

	@Update("UPDATE board " +
			"SET deleted = TRUE " +
			"WHERE board_id = #{ boardId }") // ? : 나중에 채워질 영역 표시)
	public void deleteBoard(int boardId);

	
	@Select("SELECT board_id boardid, worker_id workerid, title, content, regdate, deleted " +
			"FROM board " +	
			"WHERE board_id = #{ boardId } AND deleted = FALSE")
	BoardDto selectBoardByBoardNo(int boardId);
	
	@Update("UPDATE board " +
			"SET title = #{ title }, content = #{ content } " +
			"WHERE board_id = #{ boardId } ")	
	public void updateBoard(BoardDto board);
	



	
	
	
	
	
}
