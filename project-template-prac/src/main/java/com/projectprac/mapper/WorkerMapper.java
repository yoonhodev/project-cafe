package com.projectprac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.projectprac.dto.SalaryDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.dto.WorkerDto;

@Mapper
public interface WorkerMapper {

	
	@Select("select worker_id workerId, store_id storeId, worker_name workerName, worktime, salary, worker_phone workerPhone, work_year workYear, work_month workMonth " +
			"from worker " +
			"where store_id = #{storeId} " +
			"order by work_year DESC " )
	List<WorkerDto> selectWorkerByStoreId(int storeId);

	@Select("SELECT store_id storeId, store_name storeName, store_phone storePhone, store_addr storeAddr, store_introduce storeIntroduce, store_schedule storeSchedule, store_open storeOpen, store_image storeImage, store_uniqueimage storeUniqueimage " +
			"FROM store ")
	List<StoreDto> selectAllStores();

	

	@Insert("insert into worker (worktime, worker_name, salary, worker_phone, store_id, work_year, work_month ) " +
			"values (#{workTime}, #{workerName}, #{salary}, #{workerPhone}, #{storeId}, #{workYear}, #{workMonth} ) " )
	void insertCost(WorkerDto worker);

	
	@Select("select worker_id workerId, worktime, fee, fee_date feeDate, work_week workDate " +
			"from salary " +
			"where worker_id = #{workerId} " )
	SalaryDto showAllWorkerDtail(@Param("workerId") int workerId);

	
	@Insert("insert into salary (work_week, worktime , fee_date, worker_id ) " +
			"values (#{workWeek}, #{workTime}, #{feeDate}, #{workerId} ) " )
	void insertWorkerDetail(SalaryDto salary);

	
	@Select("select s.worker_id workerId, s.worktime, s.fee, s.fee_date feeDate, s.work_week workWeek, w.worker_name workerName, w.work_year workYear, w.work_month workMonth, w.salary " +
			"from salary s " +
			"left outer join worker w " +
			"on s.worker_id=w.worker_id " +
			"where s.worker_id = #{workerId} " )
	List<SalaryDto> selectSalaryList(SalaryDto salary);

	


	
	
}
