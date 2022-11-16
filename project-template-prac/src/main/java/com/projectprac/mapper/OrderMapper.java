package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.AddressDto;
import com.projectprac.dto.ProductDto;

@Mapper
public interface OrderMapper {

	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product " +
			"WHERE prod_id = #{ prodId } ")
	ProductDto findProductByProdId(int prodId);

	ProductDto deleteAll(int prodId);

	ProductDto delete(int prodId);
	
	@Select("SELECT DISTINCT prod_id prodId, prod_category prodCategory, prod_name prodName, prod_price prodPrice, prod_des prodDes, prod_img prodImg " +
			"FROM product ")
	List<ProductDto> findShop();

	@Select("SELECT address, detail_address detailAddress " +
			"FROM address " +
			"WHERE customer_id = #{ customerId }" )
	AddressDto selectAddress(String customerId);
	
}
