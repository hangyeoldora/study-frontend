package com.lhg.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lhg.project.model.BbsDao;
import com.lhg.project.model.BbsVo;


public class DetailController extends HttpServlet {
	RequestDispatcher rd=null;
	String url;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		url=req.getRequestURI().substring(14); // 주소로부터 파일명 추출
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		int bbsIdx=Integer.parseInt(req.getParameter("bbsIdx"));
		String bbsTitle=req.getParameter("bbsTitle");
		String bbsContent=req.getParameter("bbsContent");
		if(url.contains("detail")) {
			resp.getWriter().write(getDetailJson(bbsIdx)+"");
		}
		if(url.contains("update")) {
			BbsDao dao=new BbsDao();
			int result = dao.update(bbsIdx, bbsTitle, bbsContent);
		}
		if(url.contains("delete")) {
			BbsDao dao=new BbsDao();
			int result = dao.delete(bbsIdx);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		url=req.getRequestURI().substring(14); // 주소로부터 파일명 추출
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		int bbsIdx=Integer.parseInt(req.getParameter("bbsIdx"));
		String bbsTitle=req.getParameter("bbsTitle");
		String bbsContent=req.getParameter("bbsContent");
		
		if(url.contains("detail")) {
			rd=req.getRequestDispatcher("/bbs/detail.jsp");
			rd.forward(req, resp);
		}
	}
	public String getDetailJson(int bbsIdx) {
		StringBuffer result=new StringBuffer("");
		result.append("{\"result\":[");
		System.out.println(bbsIdx);
		BbsVo bean = new BbsDao().getBbs(bbsIdx);
		result.append("{\"bbsIdx\": \""+bean.getBbsIdx()+"\",");
		result.append("\"userID\": \""+bean.getUserID()+"\",");
		result.append("\"bbsTitle\": \""+bean.getBbsTitle()+"\",");
		result.append("\"bbsContent\": \""+bean.getBbsContent()+"\",");
		result.append("\"bbsDate\": \""+bean.getBbsDate()+"\"}");
		result.append("]}");
		System.out.println(bean);
		return result.toString();
	}
}
