package com.spring.utms.market.service;

import java.util.List;
import java.util.Map;

import com.spring.utms.market.dto.ProductDto;

public interface MarketService {

	public void addProduct(ProductDto productDto) throws Exception;
	public List<Map<String, Object>> getProductList() throws Exception;
	public ProductDto getOneProduct(int num) throws Exception;
	public void addComment(int productId, String content, String memberId) throws Exception;
	public List<Map<String, Object>> getComments(int num) throws Exception;
	public List<Map<String, Object>> getSortedProducts(String category) throws Exception;

}
