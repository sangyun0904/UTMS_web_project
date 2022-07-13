package com.spring.utms.market.service;

import java.util.List;
import java.util.Map;

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
	public List<Map<String, Object>> getProductList() throws Exception {
		return marketDao.selectProductList();
	}

	@Override
	public ProductDto getOneProduct(int num) throws Exception{
		marketDao.updateViews(num);
		return marketDao.selectOneProduct(num);
	}

	@Override
	public void addComment(int productId, String content, String memberId) throws Exception {
		marketDao.updateComments(productId);
		marketDao.insertComment(productId, content, memberId);	
	}

	@Override
	public List<Map<String, Object>> getComments(int num)  throws Exception{
		return marketDao.selectAllComments(num);
	}

	@Override
	public List<Map<String, Object>> getSortedProducts(String category) throws Exception {
		return marketDao.selectSortedProducts(category);
	}

	@Override
	public List<Map<String, Object>> getSearchProducts(String searchWord) throws Exception {
		return marketDao.selectSearchProducts(searchWord);
	}

}
