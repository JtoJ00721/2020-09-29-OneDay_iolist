package com.biz.iolist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String iolist() {
		
		return "home";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String iowrite(Model model) {
		model.addAttribute("BODY", "IO_WRITE");
		return "home";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String iodetail(Model model) {
		model.addAttribute("BODY", "IO_DETAIL");
		return "home";
	}
	
}
