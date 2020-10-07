package com.biz.iolist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.iolist.mapper.IoDao;
import com.biz.iolist.model.IoVO;
import com.biz.iolist.service.IoService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
public class HomeController {

<<<<<<< HEAD
	@Autowired
	private IoDao ioDao;

=======
>>>>>>> 5be0764b9239b9bf86d48a22020b88bc0ae22d58
	@Qualifier("pService")
	private final IoService ioService;

	@Transactional
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<IoVO> ioList = ioService.selectAll();

		model.addAttribute("ITEMS", ioList);
		model.addAttribute("BODY", "IO_LIST");
		return "home";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(@ModelAttribute("IOVO") IoVO ioVO, Model model) {

		model.addAttribute("IOVO", ioVO);
		model.addAttribute("BODY", "IO_WRITE");
		return "home";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute("IOVO") IoVO ioVO) {

		ioService.insert(ioVO);
		return "redirect:/";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("id") Long seq, Model model) {

		IoVO ioVO = ioService.findById(seq);
		model.addAttribute("IOVO", ioVO);
		model.addAttribute("BODY", "IO_DETAIL");

		return "home";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("id") Long seq, Model model) {

		ioService.delete(seq);
		return "redirect:/";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam("id") Long seq, @ModelAttribute("IOVO") IoVO ioVO, Model model) {

		ioVO = ioService.findById(seq);
		model.addAttribute("IOVO", ioVO);
		model.addAttribute("BODY", "IO_WRITE");
		return "home";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute("IOVO") IoVO ioVO, Model model) {

		ioService.update(ioVO);

		return "redirect:/";
	}
}