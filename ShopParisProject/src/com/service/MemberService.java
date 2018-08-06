package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MysqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {
	MemberDAO dao;
	public MemberService() {
		dao = new MemberDAO();
	}	

	public int idCheck(String userid) {
		SqlSession session = MysqlSessionFactory.getSession();
	
		int n = 0;
		try {
			n=dao.idCheck(session,userid);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return n;
	}

	public int memberAdd(MemberDTO dto) {
		SqlSession session = MysqlSessionFactory.getSession();
		int n = 0;
		try {
			n = dao.memberAdd(session,dto);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			session.close();
		}
		return n;
	}

	public MemberDTO login(HashMap<String, String> map) {
		SqlSession session = MysqlSessionFactory.getSession();
		MemberDTO dto = null;
		try {
			dto = dao.login(session,map);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
		
	}

}
