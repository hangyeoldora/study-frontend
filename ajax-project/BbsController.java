package com.lhg.project.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lhg.project.model.BbsDao;
import com.lhg.project.model.BbsVo;

public class BbsController extends HttpServlet {
	
	RequestDispatcher rd;
	String url;
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		url=req.getRequestURI().substring(14); // 주소로부터 파일명 추출
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		String userID=req.getParameter("userID");
		String bbsTitle=req.getParameter("bbsTitle");
		String bbsContent=req.getParameter("bbsContent");
		System.out.println(userID+"/"+bbsTitle+"/"+bbsContent);
		if(url.contains("insert")) {
			BbsDao dao=new BbsDao();
			dao.write(bbsTitle, userID, bbsContent);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		url=req.getRequestURI().substring(14); // 주소로부터 파일명 추출
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");

		if(url.contains("board")) {
			rd=req.getRequestDispatcher("/bbs/board.jsp");
			rd.forward(req, resp);
		}
		if(url.contains("add")) {
			rd=req.getRequestDispatcher("/bbs/add.jsp");
			rd.forward(req, resp);
		}
	}

}
