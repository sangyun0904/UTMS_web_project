package com.spring.portfolio.market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.portfolio.market.dto.ProductDto;
import com.spring.portfolio.market.service.MarketService;

@Controller
public class MarketController {
	
	@Autowired
	private MarketService marketService;
	
	@RequestMapping(value="/productList" , method=RequestMethod.GET)
	public ModelAndView productList() throws Exception {
		
		List<ProductDto> productList = marketService.getProductList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/market/marketMain");
		mv.addObject("productList", productList);
		
		return mv;
	}
	
	@RequestMapping(value="/productInfo" , method=RequestMethod.GET)
	public ModelAndView productInfo(int num) throws Exception {
		
		ProductDto productDto = marketService.getOneProduct(num);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/market/productInfo");
		mv.addObject("productDto", productDto);
		
		return mv;
	}
	
	@RequestMapping(value="/uploadProduct", method=RequestMethod.GET)
	public ModelAndView uploadForm() throws Exception {
		return new ModelAndView("/market/uploadProduct");
	}
	
	@RequestMapping(value="/uploadProduct" , method=RequestMethod.POST)
	public ResponseEntity<String> uploadProduct(ProductDto productDto, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		productDto.setProductSeller((String)session.getAttribute("memberInfo"));
		marketService.addProduct(productDto);
		
		String message  = "<script>";
			   message += " alert('상품이 등록되었습니다.');";
			   message += " location.href='/portfolio/uploadProduct';";
			   message += " </script>";
			   
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			   
		return new ResponseEntity<String>(message, responseHeaders, HttpStatus.OK);
		
	}

}
