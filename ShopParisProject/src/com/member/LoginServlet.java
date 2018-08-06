package com.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 로그인 */
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		HashMap<String,String> map= new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		
		MemberService service = new MemberService();
		MemberDTO dto= service.login(map);
		
		System.out.println(dto.getUserid());
		System.out.println(dto.getUsername());
		
		//PrintWriter out = response.getWriter();
		
		String nextPage="";
		
		if(dto.getUserid()!=null) {
			//세션가지고 메인으로 이동
			HttpSession session = request.getSession();
			session.setAttribute("login", dto);
			nextPage="index.jsp";
			
		}else {
			nextPage="LoginUIServlet";
		}
		
		response.sendRedirect(nextPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		
	}

}
