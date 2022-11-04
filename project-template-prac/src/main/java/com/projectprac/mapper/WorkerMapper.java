package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.StoreDto;
import com.projectprac.dto.WorkerDto;

@Mapper
public interface WorkerMapper {

	
	@Select("select worker_id workerId, store_id storeId, worker_name workerName, worktime, salary, worker_phone workerPhone, work_year workYear, work_month workMonth " +
			"from worker " +
			"where store_id = #{storeId} " )
	List<WorkerDto> selectWorkerByStoreId(int storeId);

	@Select("SELECT store_id storeId, store_name storeName, store_phone storePhone, store_addr storeAddr, store_introduce storeIntroduce, store_schedule storeSchedule, store_open storeOpen, store_image storeImage, store_uniqueimage storeUniqueimage " +
			"FROM store ")
	List<StoreDto> selectAllStores();

	

	@Insert("insert into worker (worktime, worker_name, salary, worker_phone, store_id, work_year, work_month ) " +
			"values (#{workTime}, #{workerName}, #{salary}, #{workerPhone}, #{storeId}, #{workYear}, #{workMonth} ) " )
	void insertCost(WorkerDto worker);

}
