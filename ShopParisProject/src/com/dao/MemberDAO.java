package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public int idCheck(SqlSession session, String userid) {
		int n = session.selectOne("com.member.idCheck",userid);
		return n;
	}

	public int memberAdd(SqlSession session,MemberDTO dto) {
		int n=session.insert("com.member.memberAdd",dto);
		return n;
	}

	public MemberDTO login(SqlSession session, HashMap<String, String> map) {
		MemberDTO dto = session.selectOne("com.member.login",map);
		return dto;
	}

}
