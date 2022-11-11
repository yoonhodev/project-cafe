package com.projectprac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectprac.dto.FixedSpendDto;
import com.projectprac.dto.SalaryDto;
import com.projectprac.dto.StoreDto;
import com.projectprac.dto.WorkerDto;
import com.projectprac.service.WorkerService;

@Controller
public class WorkerController {

	@Autowired
	@Qualifier("workerService")
	private WorkerService workerService;
	
	@GetMapping(path = {"workerInfo"})
	public String showWorkerInfo(@RequestParam(defaultValue = "-1" )int storeId,
								 @RequestParam(defaultValue = "-1") String workYear ,
								 @RequestParam(defaultValue = "-1") String workMonth,
								 WorkerDto worker, Model model) {
		List<StoreDto> stores = workerService.showAllStores();
		List<WorkerDto> workyears = workerService.showallWorkers();
		
		if(storeId != -1 ) {
			List<WorkerDto> workers = workerService.selectWorkerByStoreId(storeId, workYear,workMonth);
//			System.out.println(workers);
			model.addAttribute("workers", workers);
			for (StoreDto store : stores) {
				if (store.getStoreId() == storeId) {
					model.addAttribute("storeName11", store.getStoreName());
				}
			}
		}
		
		// fixedSpendService.showCostByStoreId();
		model.addAttribute("workyears",workyears);
		model.addAttribute("stores", stores);		
		return "worker/worker-info";
	}
	
	@PostMapping(path = {"workerInfo"})
	public String insertWorker(WorkerDto worker) {
		workerService.insertWorker(worker);
		return "redirect:workerInfo";
	}

	@GetMapping(path = {"worker-infoDtail"})
	public String showWorkerDtail(int workerId , Model model, SalaryDto salary) {
		
		
		
		if(workerId != -1) {
			List<SalaryDto> showSalaryList = workerService.selectSalaryList(salary);
//			System.out.println(showSalaryList);
			
			model.addAttribute("showSalaryList",showSalaryList);
		}	
		
		
		model.addAttribute("workerId", workerId);

		return "worker/worker-infoDtail";
	}

	@PostMapping(path = {"worker-infoDtail"})
	public String insertWorkerDetail(SalaryDto salary, int workerId) {
		
		workerService.insertWorkerDetail(salary);
		
		System.out.println(workerId);
		
		return "redirect:worker-infoDtail?workerId=" + workerId;
	}
	
}












