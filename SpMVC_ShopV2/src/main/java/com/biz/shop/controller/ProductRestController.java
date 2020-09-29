package com.biz.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.biz.shop.service.ProductService;


@RestController
@RequestMapping(value="/api/product")
public class ProductRestController {

	@Autowired
	@Qualifier("proServiceV1")
	ProductService proService;
	
	@RequestMapping(value="/get_pcode",method=RequestMethod.GET)
	public String getPCode( ) {

		String strPCode = proService.getPCode() ;
		return strPCode;
	
	}
}




