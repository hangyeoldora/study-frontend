package com.lhg.project.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lhg.project.model.UserDao;

public class LoginController extends HttpServlet {
	RequestDispatcher rd=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		String userID=req.getParameter("userID");
		String userPW=req.getParameter("userPW");
		
		resp.getWriter().write(loginCheck(userID, userPW)+"");
	}
	private int loginCheck(String userID, String userPW) {
		try {
			UserDao dao = new UserDao();
			return dao.login(userID, userPW);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -9;
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		rd=req.getRequestDispatcher("/user/login.jsp");
		rd.forward(req, resp);
	}
}
