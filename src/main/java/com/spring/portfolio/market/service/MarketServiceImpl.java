package com.spring.portfolio.market.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.portfolio.market.dao.MarketDao;
import com.spring.portfolio.market.dto.ProductDto;

@Service
public class MarketServiceImpl implements MarketService{
	
	@Autowired
	private MarketDao marketDao;

	@Override
	public void addProduct(ProductDto productDto) throws Exception{
		marketDao.insertProduct(productDto);
	}

}
