package com.spring.utms.market.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.utms.market.dto.ProductDto;

@Repository
public class MarketDaoImpl implements MarketDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertProduct(ProductDto productDto) throws Exception {
		sqlSession.insert("mapper.market.insertNewProduct" , productDto);
	}

	@Override
	public List<ProductDto> selectProductList() throws Exception {
		List<ProductDto> productList = sqlSession.selectList("mapper.market.getAllProducts");
		return productList;
	}

	@Override
	public ProductDto selectOneProduct(int num) throws Exception{
		return sqlSession.selectOne("mapper.market.getOneProduct", num);
	}

	@Override
	public void updateViews(int num) throws Exception {
		sqlSession.update("mapper.market.increaseViews", num);
	}

	@Override
	public void insertComment(int productId, String content, String memberId) throws Exception {
		
		Map<String, Object> orderMap = new HashMap<String, Object>();
		
		orderMap.put("productId", productId);
		orderMap.put("content", content);
		orderMap.put("memberId", memberId);
		
		sqlSession.insert("mapper.comment.insertNewComment" , orderMap);
	}

	@Override
	public List<Map<String, Object>> selectAllComments(int num) {
		return sqlSession.selectList("mapper.comment.getAllComments");
	}

}
