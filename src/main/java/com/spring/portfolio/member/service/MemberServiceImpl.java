package com.spring.portfolio.member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.portfolio.member.dao.MemberDao;
import com.spring.portfolio.member.dto.MemberDto;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public void addMember(MemberDto memberDto) throws Exception{
		memberDao.insertNewMember(memberDto);
	}

	@Override
	public MemberDto login(Map<String, String> loginMap) throws Exception {
		return memberDao.login(loginMap);
	}
	
}
