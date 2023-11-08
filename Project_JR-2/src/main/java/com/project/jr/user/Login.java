package com.project.jr.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.jr.admin.model.AdminDTO;
import com.project.jr.admin.repository.AdminDAO;
import com.project.jr.user.model.UserDTO;
import com.project.jr.user.repository.UserDAO;

@WebServlet("/user/login.do")
public class Login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/login.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
	
	
		
		UserDAO uDao=new UserDAO();
		UserDTO uDto=new UserDTO();
		uDto.setId(id);
		uDto.setPw(pw);
		UserDTO userResult=uDao.login(uDto);
		
		AdminDAO aDao=new AdminDAO();
		AdminDTO aDto=new AdminDTO();
		aDto.setAdminInfoId(id);
		aDto.setAdminInfoPw(pw);
		AdminDTO adminResult=aDao.login(aDto);
		
		
		
		
		if (userResult != null) {//로그인 성공
			
			if(userResult.getUserStatus() == 1) {//활동 중 회원
				//인증 티켓
				req.getSession().setAttribute("id", id); 
				req.getSession().setAttribute("name", userResult.getName());
				req.getSession().setAttribute("lv", 1);
				resp.sendRedirect("/jr/index.do");
				return;
			}else {//탈퇴 회원
				PrintWriter writer = resp.getWriter();
				writer.print("<script>alert('tal');history.back();</script>");
				writer.close();
				return;
			}
			
		}else if (adminResult != null) {//로그인 성공
			
			//인증 티켓
			req.getSession().setAttribute("id", id); 
			req.getSession().setAttribute("name", "관리자");
			req.getSession().setAttribute("lv", 2);
			resp.sendRedirect("/jr/index.do");
			
		}else {//로그인 실패
			PrintWriter writer = resp.getWriter();
			writer.print("<script>alert('failed');history.back();</script>");
			writer.close();
		}
		
		
		
		
		
		
	
	}

}
