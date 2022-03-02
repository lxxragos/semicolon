package com.semi.flix.drama;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DramaController {
	
	
	@Resource(name="daoService")
	DramaDaoService service;
	
	
	@RequestMapping("/drama/list")
	public String drama_getList(Model model,DramaDto dto) {
		
		List<DramaDto> list = service.getList(dto);
		model.addAttribute("list", list);
		
		return "dramaboard/dramaboard_list";
	}

}
