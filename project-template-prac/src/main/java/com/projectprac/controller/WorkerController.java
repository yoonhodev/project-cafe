package com.projectprac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.projectprac.service.WorkerService;

@Controller
public class WorkerController {

	@Autowired
	@Qualifier("workerService")
	private WorkerService workerService;
	
	@GetMapping(path = {"workerInfo"})
	public String showWorkerInfo() {
		
		
		
		
		
		
		return "worker/worker-info";
	}
	
	
}
