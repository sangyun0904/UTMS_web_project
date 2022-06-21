package com.spring.portfolio.member.service;

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
	
}
