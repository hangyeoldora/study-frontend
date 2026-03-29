package com.lhg.project.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lhg.project.model.BbsDao;

public class PageController extends HttpServlet {
	
	RequestDispatcher rd;
	String url;
	BbsDao dao=new BbsDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		url=req.getRequestURI().substring(14); // 주소로부터 파일명 추출
		req.setCharacterEncoding("utf-8");
		String[] arr = {"about","place","culture"}; // page 리스트
		for(int i=0; i<arr.length; i++) {
			String fileName=arr[i];
			if(url.contains(fileName)) {
				rd=req.getRequestDispatcher(fileName+".jsp");
				rd.forward(req, resp);
			}
		}
	}
}
