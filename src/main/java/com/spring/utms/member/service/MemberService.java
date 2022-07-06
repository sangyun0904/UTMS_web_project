package com.spring.utms.member.service;

import java.util.Map;

import com.spring.utms.member.dto.MemberDto;

public interface MemberService {

	public void addMember(MemberDto memberDto) throws Exception;

	public MemberDto login(Map<String, String> loginMap) throws Exception;

	public MemberDto getMemberInfo(String attribute) throws Exception;
	
}
