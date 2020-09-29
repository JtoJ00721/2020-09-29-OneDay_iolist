package com.biz.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.shop.model.IoVO;
import com.biz.shop.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	
	@Autowired
	@Qualifier("proServiceV1")
	private ProductService proService;

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String  proHome(Model model) {
	
		List<IoVO> proList = proService.selectAll();
		
		model.addAttribute("PRO_LIST",proList);
		return "home";
	}
	
}
