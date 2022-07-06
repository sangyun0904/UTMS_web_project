package com.spring.utms.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.utms.member.dto.MemberDto;

@Repository
public class MemberDaoimpl implements MemberDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertNewMember(MemberDto memberDto) throws Exception {
		sqlSession.insert("mapper.member.insertNewMember" , memberDto);
	}

	@Override
	public MemberDto login(Map<String, String> loginMap) throws Exception {
		return sqlSession.selectOne("mapper.member.login", loginMap);
	}

	@Override
	public MemberDto selectMemberInfo(String memberId) throws Exception {
		return sqlSession.selectOne("mapper.member.getMemberInfo", memberId);
	}

}
