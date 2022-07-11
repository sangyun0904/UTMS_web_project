package com.spring.utms;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		
		List<Map<String, Object>> productList = marketService.getProductList();
		
		for (Map<String, Object> map : productList) {
			if (((String)map.get("productDesc")).length() > 140) {
				map.put("productDesc", ((String)map.get("productDesc")).substring(0, 140) + " ...");
			}
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/market/marketMain");
		mv.addObject("productList", productList);
		
		return mv;
	}
	
}
