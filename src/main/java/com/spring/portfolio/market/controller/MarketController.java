package com.spring.portfolio.market.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.portfolio.market.service.MarketService;

@Controller
public class MarketController {
	
	@Autowired
	private MarketService marketService;

}
