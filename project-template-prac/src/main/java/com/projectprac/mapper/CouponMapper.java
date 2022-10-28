package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.CouponDto;
import com.projectprac.dto.CouponMakeDto;

public interface CouponMapper {

	@Insert("INSERT INTO coupon_make (coupon_id, customer_id, coupon_start, coupon_end ) " +
			"VALUES (#{ couponId }, #{ customerId }, #{ couponStart }, #{ couponEnd }) ")
	void insertCouponMake(@Param("customerId") String customerId, @Param("couponId") int couponId, @Param("couponStart")String couponStart, @Param("couponEnd")String couponEnd);

	@Select("SELECT coupon_make_id couponMakeId, coupon_id couponId, customer_id customerId, coupon_start couponStart, coupon_end couponEnd, coupon_deleted couponDeleted " +
			"FROM coupon_make " +
			"WHERE customer_id = #{ customerId }")
	List<CouponMakeDto> selectCouponMakeByCustomerId(String customerId);

	@Select("SELECT coupon_id couponId, coupon_name couponName, coupon_rate couponRate " +
			"FROM coupon " +
			"WHERE coupon_id = #{ couponId } ")
	CouponDto selectCouponByCouponId(int couponId);

}
