package com.spring.portfolio.market.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.portfolio.market.dto.ProductDto;

@Repository
public class MarketDaoImpl implements MarketDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertProduct(ProductDto productDto) throws Exception {
		sqlSession.insert("mapper.market.insertNewProduct" , productDto);
	}

}
