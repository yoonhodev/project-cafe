package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.storeDto;

@Mapper
public interface storeMapper {

	@Select( "select store_id, store_name, store_phone, store_addr, store_introduce, store_sechdule, store_open  " + 
			"from store " )
	List<storeDto> selectStore(int storeId);
	
}
