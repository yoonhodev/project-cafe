package com.projectprac.controller;


import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.projectprac.common.Util;
import com.projectprac.dto.StoreDto;
import com.projectprac.service.StoreService;


@Controller
public class StoreController {

	@Autowired
	@Qualifier("storeService")
	private StoreService storeService;

	
	
	
	@GetMapping(path = {"/store"})
	
	public String store(@RequestParam(defaultValue = "1")int storeId ,
			StoreDto storeDto ,Model model) {
		
		List<StoreDto> stores = storeService.selectStoreInfo(storeDto);
		
		
		
		model.addAttribute("stores", stores);
		
		return "store/store-intro";
	}
	
	
	@GetMapping(path = {"/writeStore"})

	public String showWritesStore() {
	
	return "store/writeStore";
	}
	
	@PostMapping(path = {"/writeStore"})
	public String writeStore(StoreDto storeDto,
							MultipartHttpServletRequest req) {
		
		
		MultipartFile attach = req.getFile("attach");
		
		if (attach != null) { //내용이 있는 경우
			System.out.println("1");
			//2 데이터 처리
			ServletContext application = req.getServletContext();
			String path = application.getRealPath("/resources/assets/images/cafe-out-image-folder");
			String fileName = attach.getOriginalFilename(); //파일 이름 가져오기
			if (fileName != null && fileName.length() > 0) {
			String uniqueFileName = Util.makeUniqueFileName(fileName);
				try {
					attach.transferTo(new File(path, uniqueFileName));//파일 저장
					System.out.println("2");
				
					
					storeDto.setStoreImage(fileName);
					storeDto.setStoreUniqueimage(uniqueFileName);
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		}
		
		
		storeService.insertStoreIntro(storeDto);
		
		
		
		return "store/writeStore";
		
	}
	
	@GetMapping(path = {"{storeId}/open"})
	public String changeToOpen(@PathVariable("storeId")int storeId,
							   Model model) {
		
		storeService.changeToOpen(storeId);
		
		return "redirect:/store/store-intro";
		
	}
	
	
	
}

