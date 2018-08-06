package com.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;

/**
 * Servlet implementation class UpdateUIServlet
 */
@WebServlet("/UpdateUIServlet")
public class UpdateUIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 세션아이디를 받아와서 input한 아이디와 같고, 그 id에 해당하는 db 패스워드가 일치하ㅣ면  리다이렉트 */
		HttpSession session = request.getSession();
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		
		String dbuserid = dto.getUserid();
		String dbuserpw = dto.getPasswd();
		
		String nextPage = "";
		
		/*if(dto==null) {
			 System.out.println("실패");
	            //session.setAttribute("login", dto);
	            nextPage="MemberMypageUIServlet";
	            session.setAttribute("mesg", "아이디와 비밀번호를 확인해주세요.!");
		}else {
			System.out.println("성공");
            nextPage="update.jsp";
		}*/
		
		if(dbuserid.equals(userid) && dbuserpw.equals(passwd)) {
            System.out.println("성공");
            nextPage="update.jsp";
       }else {
            System.out.println("실패");
            nextPage="MemberMypageUIServlet";
            session.setAttribute("mesg", "아이디와 비밀번호를 확인해주세요.!");
            
       }
       response.sendRedirect(nextPage);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
