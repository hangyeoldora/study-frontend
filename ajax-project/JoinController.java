package com.lhg.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lhg.project.model.UserDao;
import com.lhg.project.model.UserVo;
@WebServlet("/user/join.do")
public class JoinController extends HttpServlet {
	
	RequestDispatcher rd;
	String url;
	UserDao dao=new UserDao();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		
		String userID = req.getParameter("userID");
		String userPW = req.getParameter("userPW");
		String userName = req.getParameter("userName");
		String userGender = req.getParameter("userGender");
		String userEmail = req.getParameter("userEmail");
		resp.getWriter().write(register(userID,userPW,userName,userGender,userEmail));
	}
	
	public int register(String userID, String userPW, String userName, String userGender, String userEmail) {
		UserVo bean = new UserVo();
		UserDao dao = new UserDao();
		try {
			bean.setUserID(userID);
			bean.setUserPW(userPW);
			bean.setUserName(userName);
			bean.setUserGender(userGender);
			bean.setUserEmail(userEmail);
			int res = dao.register(bean);
			System.out.println(res);
			return res;
		} catch (Exception e) {
			return 0;
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		rd=req.getRequestDispatcher("/user/join.jsp");
		rd.forward(req, resp);
	}
}
