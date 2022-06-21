package com.spring.portfolio.member.dao;

import com.spring.portfolio.member.dto.MemberDto;

public interface MemberDao {

	public void insertNewMember(MemberDto memberDto) throws Exception;

}
