package com.spring.utms.market.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.utms.market.dao.MarketDao;
import com.spring.utms.market.dto.ProductDto;

@Service
public class MarketServiceImpl implements MarketService{
	
	@Autowired
	private MarketDao marketDao;

	@Override
	public void addProduct(ProductDto productDto) throws Exception{
		marketDao.insertProduct(productDto);
	}

	@Override
	public List<ProductDto> getProductList() throws Exception {
		return marketDao.selectProductList();
	}

	@Override
	public ProductDto getOneProduct(int num) throws Exception{
		marketDao.updateViews(num);
		return marketDao.selectOneProduct(num);
	}

}
