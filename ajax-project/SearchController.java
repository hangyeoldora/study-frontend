package com.lhg.project.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lhg.project.model.BbsDao;
import com.lhg.project.model.BbsVo;

@WebServlet("/bbs/search")
public class SearchController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		
		
		String bbsTitle = req.getParameter("bbsTitle");
		try {
			resp.getWriter().write(getJson(bbsTitle));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String getJson(String bbsTitle) throws SQLException {
		if(bbsTitle == null) bbsTitle="";
		StringBuffer result= new StringBuffer("");
		result.append("{\"result\":[");
		BbsDao dao = new BbsDao();
		List<BbsVo> list = dao.search(bbsTitle);
		for(int i=0; i<list.size(); i++) {
			result.append("{\"bbsIdx\": \""+list.get(i).getBbsIdx()+"\",");
			result.append("\"userID\": \""+list.get(i).getUserID()+"\",");
			result.append("\"bbsTitle\": \""+list.get(i).getBbsTitle()+"\",");
			result.append("\"bbsContent\": \""+list.get(i).getBbsContent()+"\",");
			result.append("\"bbsDate\": \""+list.get(i).getBbsDate()+"\"}");
			if(i!=(list.size()-1)) result.append(",");
		}
		result.append("]}");
		return result.toString();
	}
}