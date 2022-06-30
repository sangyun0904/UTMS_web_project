package com.spring.utms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.utms.market.dto.ProductDto;
import com.spring.utms.market.service.MarketService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private MarketService marketService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() throws Exception {
		
		List<ProductDto> productList = marketService.getProductList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/market/marketMain");
		mv.addObject("productList", productList);
		
		return mv;
	}
	
}
