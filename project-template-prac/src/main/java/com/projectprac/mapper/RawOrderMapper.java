package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.RawOrderDto;

@Mapper
public interface RawOrderMapper {

	@Select("SELECT raw_id rawId, raw_name rawName, raw_price rawPrice, temperature rawTemp, big_category bigCategory, small_category smallCategory " +
			"FROM raw ")
	List<RawOrderDto> selectAllRaws();

}
