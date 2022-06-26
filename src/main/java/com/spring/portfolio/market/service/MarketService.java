package com.spring.portfolio.market.service;

import java.util.List;

import com.spring.portfolio.market.dto.ProductDto;

public interface MarketService {

	public void addProduct(ProductDto productDto) throws Exception;
	public List<ProductDto> getProductList() throws Exception;
	public ProductDto getOneProduct(int num) throws Exception;

}
