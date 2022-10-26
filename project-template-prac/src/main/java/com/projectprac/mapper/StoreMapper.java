package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.StoreDto;

@Mapper
public interface StoreMapper {

	
	@Select("select store_id storeid, store_name storename, store_phone storephone, store_addr storeaddr, store_introduce storeintroduce, store_schedule storeschedule, store_open storeopen, image from store " )
//	@Options(useGeneratedKeys = true, keyColumn = "store_id", keyProperty = "storeId")
	List<StoreDto> selectStoreByStoreId(StoreDto storeDto);

	
	/*
	 * @Select(
	 * "select store_id, store_name, store_phone, store_addr, store_introduce, store_schdule, store_open "
	 * + "form store " + "order by store_id " ) List<StoreDto>
	 * selectStoreByStoreId(StoreDto storeDto);
	 */
	 

}