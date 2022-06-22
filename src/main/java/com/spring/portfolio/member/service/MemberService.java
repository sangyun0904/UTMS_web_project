package com.spring.portfolio.member.service;

import java.util.Map;

import com.spring.portfolio.member.dto.MemberDto;

public interface MemberService {

	public void addMember(MemberDto memberDto) throws Exception;

	public MemberDto login(Map<String, String> loginMap);
	
}
