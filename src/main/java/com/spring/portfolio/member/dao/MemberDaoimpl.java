package com.spring.portfolio.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.portfolio.member.dto.MemberDto;

@Repository
public class MemberDaoimpl implements MemberDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertNewMember(MemberDto memberDto) throws Exception {
		sqlSession.insert("mapper.member.insertNewMember" , memberDto);
	}

}
