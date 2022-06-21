package com.spring.portfolio.market.dao;

import com.spring.portfolio.market.dto.ProductDto;

public interface MarketDao {

	public void insertProduct(ProductDto productDto) throws Exception;

}
