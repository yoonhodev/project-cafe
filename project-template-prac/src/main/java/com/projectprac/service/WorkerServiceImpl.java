package com.projectprac.service;

import java.util.List;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.dto.WorkerDto;
import com.projectprac.mapper.WorkerMapper;

import lombok.Setter;

public class WorkerServiceImpl implements WorkerService {

	@Setter
	private WorkerMapper workerMapper;

	@Override
	public List<StoreDto> showAllStores() {
		
		List<StoreDto> stores = workerMapper.selectAllStores();
		return stores;
	}

	@Override
	public List<WorkerDto> selectWorkerByStoreId(int storeId) {
		List<WorkerDto> workers = workerMapper.selectWorkerByStoreId(storeId);
		return workers;
	}

	@Override
	public void insertWorker(WorkerDto worker) {
		
		workerMapper.insertCost(worker);
	}
	
}