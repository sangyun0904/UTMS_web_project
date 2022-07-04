package com.spring.utms.market.dao;

import java.util.List;

import com.spring.utms.market.dto.ProductDto;

public interface MarketDao {

	public void insertProduct(ProductDto productDto) throws Exception;
	public List<ProductDto> selectProductList() throws Exception;
	public ProductDto selectOneProduct(int productId) throws Exception;
	public void updateViews(int num) throws Exception;
	public void insertComment(String content) throws Exception;

}
