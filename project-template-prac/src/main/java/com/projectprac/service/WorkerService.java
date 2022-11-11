package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.SalaryDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.dto.WorkerDto;

public interface WorkerService {

	

	List<WorkerDto> selectWorkerByStoreId(int storeId, String workYear, String workMonth);

	List<StoreDto> showAllStores();

	void insertWorker(WorkerDto worker);

	SalaryDto showAllWorkerDtail(int workerId);

	void insertWorkerDetail(SalaryDto salary);

	List<SalaryDto> selectSalaryList(SalaryDto salary);

	List<WorkerDto> showallWorkers();

	

}
