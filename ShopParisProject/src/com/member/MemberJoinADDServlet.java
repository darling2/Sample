package com.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class MemberJoinADDServlet
 */
@WebServlet("/MemberJoinADDServlet")
public class MemberJoinADDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 회원가입 */
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String username = request.getParameter("username");
		String post = request.getParameter("post");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String phone1 = request.getParameter("phone1");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		
		MemberDTO dto = new MemberDTO(userid,passwd,username,post,addr1,addr2,phone1,email1,email2);
		
		MemberService service = new MemberService();
		int n = service.memberAdd(dto);
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		if(n==1) {
			System.out.println("등록 완료");
			session.setAttribute("username", username);
			response.sendRedirect("MemberComplete.jsp");
		}else {
			out.print("<script>");
			out.print("alert('빈칸 없이 넣어주세요')");
			out.print("</script>");
			System.out.println("등록실패");
		}
	}

}
