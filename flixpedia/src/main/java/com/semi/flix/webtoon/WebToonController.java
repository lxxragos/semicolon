package com.semi.flix.webtoon;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebToonController {
	
	@Resource(name="webtoonService")
	WebtoonService service;
	
	@RequestMapping("/webtoon/list")
	String webtoon_list(Model model,WebtoonDto dto) {
		
		dto.setPageSize(12);
		dto.setStart( dto.getPg() * dto.getPageSize());
		
		List<WebtoonDto> list = service.getList(dto);
		int cnt = service.getTotal(dto);
		
		model.addAttribute("webtoonList",list);
		model.addAttribute("totalCnt",cnt);
		
		return "webtoon/webtoon_list";
	}
	
	@RequestMapping("/webtoon/view")
	String webtoon_view(WebtoonDto dto,Model model) {
		
		WebtoonDto resultDto = service.getView(dto);
		model.addAttribute("webtoonDto",resultDto);
		return "webtoon/webtoon_view";
	}
	
	
	
	
}
