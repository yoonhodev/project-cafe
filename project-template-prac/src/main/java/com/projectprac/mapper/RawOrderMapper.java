package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.RawOrderDto;

@Mapper
public interface RawOrderMapper {

	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw ")
	List<RawOrderDto> selectAllRaws();

	@Select("SELECT DISTINCT big_category bigCategory " +
			"FROM raw ")
	List<String> selectBigCategory();
	
	@Select("SELECT DISTINCT small_category smallCategory, big_category bigCategory " +
			"FROM raw " )
	List<RawOrderDto> selectSmallCategory();

	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw " +
			"WHERE big_category = #{ bigCategory } AND small_category = #{ smallCategory } AND raw_name LIKE CONCAT('%',#{ rawName },'%') ")
	List<RawOrderDto> selectRawOrderByBigCategoryANDSmallCategoryANDRawName(@Param("bigCategory") String bigCategory, @Param("smallCategory") String smallCategory, @Param("rawName") String rawName);

	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw " +
			"WHERE big_category = #{ bigCategory } AND raw_name LIKE CONCAT('%',#{ rawName },'%') ")
	List<RawOrderDto> selectRawOrderByBigCategoryANDRawName(@Param("bigCategory") String bigCategory, @Param("rawName") String rawName);
	
	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw " +
			"WHERE big_category = #{ bigCategory } AND small_category = #{ smallCategory } ")
	List<RawOrderDto> selectRawOrderByBigCategoryANDSmallCategory(@Param("bigCategory") String bigCategory, @Param("smallCategory") String smallCategory);
	
	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw " +
			"WHERE big_category = #{ bigCategory }")
	List<RawOrderDto> selectRawOrderByBigCategory(String bigCategory);

	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw " +
			"WHERE raw_name LIKE CONCAT('%',#{ rawName },'%') ")
	List<RawOrderDto> selectRawOrderByRawName(String rawName);

	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw " +
			"WHERE raw_id = #{ rawId }")
	RawOrderDto selectRawOrderByRawId(int rawId);


	
	
	
	
}
