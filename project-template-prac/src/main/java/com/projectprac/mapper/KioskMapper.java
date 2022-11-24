package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.ProductDto;

@Mapper
public interface KioskMapper {

	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product " +
			"WHERE prod_category = 'HOT' " )
	List<ProductDto> showMenu();
	
	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product " +
			"WHERE prod_category = 'ICE' " )
	List<ProductDto> showMenu2();
	
}
