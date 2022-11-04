package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.StoreDto;
import com.projectprac.dto.WorkerDto;

public interface WorkerService {

	

	List<WorkerDto> selectWorkerByStoreId(int storeId);

	List<StoreDto> showAllStores();

	void insertWorker(WorkerDto worker);

}
