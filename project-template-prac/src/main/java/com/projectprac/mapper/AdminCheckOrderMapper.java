package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.projectprac.dto.OrderDetailDto;
import com.projectprac.dto.OrderDto;
import com.projectprac.dto.StoreDto;

@Mapper
public interface AdminCheckOrderMapper {

	@Select("SELECT store_id storeId, store_name storeName, store_phone storePhone, store_addr storeAddr, store_introduce storeIntroduce, store_schedule storeSchedule, store_open storeOpen, store_image storeImage, store_uniqueimage storeUniqueimage " +
			"FROM store ")
	List<StoreDto> selectAllStores();

	
	
//	@Select("select o.order_id orderId, o.store_id storeId, o.customer_id customerId, o.order_type orderType, o.order_stat orderStat, o.order_date orderDate, od.order_detail_id orderDetailId, od.prod_id prodId, od.amount, p.prod_price prodPrice, p.prod_name prodName " +
//			"from modeling_cafe.order o " +
//			"left outer join order_detail od " +
//			"on o.order_id=od.order_id " +
//			"left outer join product p " + 
//			"on p.prod_id=od.prod_id " +
//			"where o.store_id = #{storeId} " +
//			"order by o.order_id DESC " )
//	List<OrderDto> selectOrderListByStoreId(@Param("storeId") int storeId);
	
	@Select("select o.order_id, o.store_id, o.customer_id, o.order_type, o.order_stat, o.order_date, o.address " +
			"from modeling_cafe.order o " +
			"where o.store_id = #{storeId} " +
			"order by o.order_id DESC " )
	@Results(
		id = "orderResultMap",
		value = {
			@Result(column = "order_id", property = "orderId", id = true),
			@Result(column = "store_id", property = "storeId"),
			@Result(column = "customer_id", property = "customerId"),
			@Result(column = "order_type", property = "orderType"),
			@Result(column = "order_stat", property = "orderStat"),
			@Result(column = "order_date", property = "orderDate"),
			@Result(column = "address", property = "address"),
			@Result(column = "order_id", property = "orderDetailDtos", many = @Many(select = "selectOrderDetailListByOrderId"))
		}
	)
	List<OrderDto> selectOrderListByStoreId(@Param("storeId") int storeId);
	
	@Select("select od.order_detail_id, od.prod_id, od.amount, p.prod_price, p.prod_name " +
			"from order_detail od " +
			"left outer join product p " + 
			"on p.prod_id=od.prod_id " +
			"where od.order_id = #{orderId} ")
	@Results(
		id = "orderDetailResultMap",
		value = {
			@Result(column = "order_detail_id", property = "orderDetailId", id = true),
			@Result(column = "prod_id", property = "prodId"),
			@Result(column = "amount", property = "amount"),
			@Result(column = "prod_price", property = "productDto.prodPrice"),
			@Result(column = "prod_name", property = "productDto.prodName")
		}
	)
	List<OrderDetailDto> selectOrderDetailListByOrderId(@Param("orderId") int orderId);


	@Update("update modeling_cafe.order " +
			"set order_stat = 2 " + 
			"where order_id = #{orderId} " )
	void updateToDeilvering(int orderId);


	@Update("update modeling_cafe.order " +
			"set order_stat = 3 " + 
			"where order_id = #{orderId} " )
	void updateToDeilvery(int orderId);


	@Update("update modeling_cafe.order " +
			"set order_stat = 1 " + 
			"where order_id = #{orderId} " )
	void updateToGetProd(int orderId);

}
