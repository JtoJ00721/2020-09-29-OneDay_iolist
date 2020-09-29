package com.biz.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.shop.model.IoVO;
import com.biz.shop.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class IoController {

	@Autowired
	@Qualifier("proServiceV1")
	private ProductService proService;

	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(@ModelAttribute("IO_VO") IoVO ioVO, Model model) {
		model.addAttribute("BODY", "IO_WRITE");
		return "home";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute IoVO ioVO) {

		int ret = proService.insert(ioVO);
		return "redirect:/";

	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("id") String p_code, Model model) {

		IoVO ioVO = proService.findByID(p_code);

		model.addAttribute("IO_VO", ioVO);
		model.addAttribute("BODY", "IO_DETAIL");
		return "home";

	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("id") String p_code) {

		int ret = proService.delete(p_code);
		return "redirect:/";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam("id") String p_code, @ModelAttribute("IO_VO") IoVO ioVO, Model model) {

		ioVO = proService.findByID(p_code);
		model.addAttribute("IO_VO", ioVO);
		model.addAttribute("BODY", "IO_WRITE");
		return "home";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute IoVO ioVO, Model model) {

		int ret = proService.update(ioVO);

		model.addAttribute("id", ioVO.getP_code());
		return "redirect:/detail";

	}

}
