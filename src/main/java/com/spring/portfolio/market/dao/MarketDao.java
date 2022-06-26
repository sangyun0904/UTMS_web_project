package com.spring.portfolio.market.dao;

import java.util.List;

import com.spring.portfolio.market.dto.ProductDto;

public interface MarketDao {

	public void insertProduct(ProductDto productDto) throws Exception;
	public List<ProductDto> selectProductList() throws Exception;
	public ProductDto selectOneProduct(int productId) throws Exception;

}
