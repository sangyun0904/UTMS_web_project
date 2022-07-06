package com.spring.utms.member.dao;

import java.util.Map;

import com.spring.utms.member.dto.MemberDto;

public interface MemberDao {

	public void insertNewMember(MemberDto memberDto) throws Exception;
	public MemberDto login(Map<String, String> loginMap) throws Exception;
	public MemberDto selectMemberInfo(String memberId) throws Exception;

}
