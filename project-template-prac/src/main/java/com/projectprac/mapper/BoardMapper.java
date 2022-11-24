package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.BoardAttachDto;
import com.projectprac.dto.BoardDto;

@Mapper
public interface BoardMapper {

	@Insert("INSERT INTO board (title, content, board_type) " +
			"VALUES (#{ title }, #{ content }, #{ boardType })")
	//@Options(useGeneratedKeys = true, keyColumn = "boardno", keyProperty = "boardNo")
	void insertBoard(BoardDto board);
	
	@Insert("INSERT INTO board (title, content, board_type) " +
			"VALUES (#{ title }, #{ content }, #{ boardType })")
	@Options(useGeneratedKeys = true, keyColumn = "board_id", keyProperty = "boardId")  // 다른 컬럼 자동증가값 가져올땐 << 문구 삽입 해야함
	void insertEventBoard(BoardDto board);

	@Select("select board_id boardid, worker_id workerid, title, content, regdate, readcount, deleted from board where board_id = #{ boardId }")
	BoardDto showBoardDetail(int boardId);
	
	@Select("select board_id boardid, worker_id workerid, title, content, regdate, readcount, deleted from board where board_id = #{ boardId }")
	BoardDto showEventBoardDetail(int boardId);
	
	@Select("SELECT board_id boardid, worker_id workerid, title, regdate, deleted, readcount, board_type " +
			"FROM board " +
			"WHERE board_type = TRUE " +
			"ORDER BY boardid DESC " + // 최신 글이 앞에 보이도록 조회
			"LIMIT #{ from }, #{ count } ")
	List<BoardDto> selectBoardByPage(@Param("from") int from, @Param("count") int count);
	
	@Select("SELECT board_id boardid, worker_id workerid, title, regdate, deleted, readcount, board_type " +
			"FROM board " +
			"WHERE board_type = FALSE " +
			"ORDER BY boardid DESC " + // 최신 글이 앞에 보이도록 조회
			"LIMIT #{ from }, #{ count } ")
	List<BoardDto> selectEventBoardByPage(@Param("from") int from, @Param("count") int count);
	
	@Select("SELECT board_id boardid, worker_id workerid, title, regdate, deleted, readcount, board_type " +
			"FROM board " +
			"WHERE deleted = FALSE and board_type = FALSE and title LIKE CONCAT('%',#{ keyword },'%') " +
			"ORDER BY boardid DESC " + 
			"LIMIT #{ from }, #{ count } ")
	List<BoardDto> selectSerchedEventBoardByPage(@Param("from") int from, @Param("count") int count, @Param("keyword") String keyword);
	
	@Select("select count(*) from board where board_type = true")
	public int selectBoardCount();
	
	@Select("select count(*) from board where board_type = false")
	public int selectEventBoardCount();

	@Select("select count(*) from board where board_type = false and deleted = false and title Like CONCAT ('%',#{ keyword },'%') ")
	int selectSerchedEventBoardCount(String keyword);
	
	@Update("UPDATE board " +
			"SET deleted = TRUE " +
			"WHERE board_id = #{ boardId }") // ? : 나중에 채워질 영역 표시)
	public void deleteBoard(int boardId);
	
	@Update("UPDATE board " +
			"SET deleted = TRUE " +
			"WHERE board_id = #{ boardId }") // ? : 나중에 채워질 영역 표시)
	void deleteEventBoard(int boardId);

	@Update("UPDATE board " +
			"SET title = #{ title }, content = #{ content } " +
			"WHERE board_id = #{ boardId } ")	
	public void updateBoard(BoardDto board);

	@Update("UPDATE board " +
			"SET title = #{ title }, content = #{ content } " +
			"WHERE board_id = #{ boardId } ")	
	void updateEventBoard(BoardDto board);
	
	@Select("SELECT attach_id attachid, board_id boardid, userfilename, savedfilename " +
			"FROM boardattach " +	
			"WHERE attach_id = #{ attachId }")
	BoardAttachDto selectBoardAttachByAttachNo(int attachId);

	@Insert("INSERT INTO boardattach (board_id, userfilename, savedfilename) " +
			"VALUES (#{ boardId }, #{ userFileName }, #{ savedFileName })")
	void insertBoardAttach(BoardAttachDto attachment);
	
	@Select("SELECT board_id boardid, worker_id workerid, title, content, regdate, readcount, deleted " +
			"FROM board " +	
			"WHERE board_id = #{ boardId } AND deleted = FALSE")
	BoardDto selectBoardByBoardNo(int boardId);
	
	@Select("SELECT board_id boardid, worker_id workerid, title, content, regdate, readcount, deleted " +
			"FROM board " +	
			"WHERE board_id = #{ boardId } AND deleted = FALSE")
	BoardDto selectEventBoardByBoardNo(int boardId);

	@Select("SELECT attach_id attachid, board_id boardid, userfilename, savedfilename " +
			"FROM boardattach " +
			"WHERE board_id = #{ boardId }")
	List<BoardAttachDto> selectBoardAttachByBoardNo(int boardId);
	
	@Update("UPDATE board " +
			"SET readcount = readcount + 1 " +
			"WHERE board_id = #{ boardId } AND deleted = FALSE ")	
	void updateBoardReadCount(int boardId);

	@Select("SELECT count(*) " +
			"FROM comment " +
			"WHERE board_id = #{ boardId }")
	int selectCommentCount();

	@Select("SELECT count(content) " +
			"FROM comment " +
			"WHERE board_id = #{ boardId }")
	int selectCommentEventCount(int boardId);

}
