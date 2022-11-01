package com.projectprac.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.ProductDto;

@Mapper
public interface OrderMapper {

	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes " +
			"FROM product " +
			"WHERE prod_id = #{ prodId } ")
	ProductDto findProductByProdId(int prodId);

//	@
//	ProductDto delete(String prodName);
	
	@Delete("DELETE TABLE product")
	
	ProductDto deleteAll(int prodId);

}
