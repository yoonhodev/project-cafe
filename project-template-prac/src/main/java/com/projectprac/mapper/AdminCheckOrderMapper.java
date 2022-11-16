package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.StoreDto;

@Mapper
public interface AdminCheckOrderMapper {

	@Select("SELECT store_id storeId, store_name storeName, store_phone storePhone, store_addr storeAddr, store_introduce storeIntroduce, store_schedule storeSchedule, store_open storeOpen, store_image storeImage, store_uniqueimage storeUniqueimage " +
			"FROM store ")
	List<StoreDto> selectAllStores();

}
