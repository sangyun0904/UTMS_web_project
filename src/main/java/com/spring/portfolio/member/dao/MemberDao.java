package com.spring.portfolio.member.dao;

import java.util.Map;

import com.spring.portfolio.member.dto.MemberDto;

public interface MemberDao {

	public void insertNewMember(MemberDto memberDto) throws Exception;
	public MemberDto login(Map<String, String> loginMap) throws Exception;

}
