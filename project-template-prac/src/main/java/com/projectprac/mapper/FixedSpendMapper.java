package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.StoreDto;

@Mapper
public interface FixedSpendMapper {

	@Insert("INSERT INTO cost (month, store_id, month_pay, manage_pay, elec_pay, ad_pay, water_pay, deli_pay) " +
			"VALUES (#{ month }, #{ storeId }, #{ monthPay }, #{ managePay }, #{ elecPay }, #{ adPay }, #{ waterPay }, #{ deliPay }) ")
	 void insertCost(FixedSpendDto fixedSpend);

	@Select("SELECT store_id storeId, store_name storeName, store_phone storePhone, store_addr storeAddr, store_introduce storeIntroduce, store_schedule storeSchedule, store_open storeOpen, store_image storeImage, store_uniqueimage storeUniqueimage " +
			"FROM store ")
	List<StoreDto> selectAllStore();

	@Select("SELECT cost_id costId, month, store_id storeId, month_pay monthPay, manage_pay managePay, elec_pay elecPay, ad_pay adPay, water_pay waterPay, deli_pay deliPay " +
			"FROM cost " +
			"WHERE store_id = #{ storeId } ")
	List<FixedSpendDto> selectCostByStoreId(int storeId);

}
