package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.OrderDto;
import com.projectprac.dto.StoreDto;

@Mapper
public interface AdminCheckOrderMapper {

	@Select("SELECT store_id storeId, store_name storeName, store_phone storePhone, store_addr storeAddr, store_introduce storeIntroduce, store_schedule storeSchedule, store_open storeOpen, store_image storeImage, store_uniqueimage storeUniqueimage " +
			"FROM store ")
	List<StoreDto> selectAllStores();

	
	
	@Select("select o.order_id orderId, o.store_id storeId, o.customer_id customerId, o.order_type orderType, o.order_stat orderStat, o.order_date orderDate, od.order_detail_id orderDetailId, od.prod_id prodId, od.amount, p.prod_price prodPrice, p.prod_name prodName " +
			"from modeling_cafe.order o " +
			"left outer join order_detail od " +
			"on o.order_id=od.order_id " +
			"left outer join product p " + 
			"on p.prod_id=od.prod_id " +
			"where o.store_id = #{storeId}" )
	List<OrderDto> selectOrderListByStoreId(@Param("storeId") int storeId);

}
