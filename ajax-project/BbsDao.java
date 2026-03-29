package com.lhg.project.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.sql.DataSource;

import com.mysql.cj.jdbc.MysqlDataSource;

public class BbsDao {

	DataSource dataSource;
	
	public BbsDao() {
		MysqlDataSource mds=new MysqlDataSource();
		mds.setUser("root");
		mds.setPassword("lhg37099");
		mds.setURL("jdbc:mysql://localhost:3306/tour_project");
		dataSource=mds;
	}
	
	// 게시글 전체 조회
	public List<BbsVo> selectAll() throws SQLException{
		String sql="select * from bbs";
		List<BbsVo> list=new ArrayList<>();
		
		try(
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery();
				){
			while(rs.next()) {
				list.add(new BbsVo(
					rs.getInt("bbsIdx"),
					rs.getString("bbsTitle"),
					rs.getString("userID"),
					rs.getString("bbsContent"),
					rs.getDate("bbsDate")
					
				));
			}
		}
		return list;
	}
	// 게시글 검색 결과 반환
	public List<BbsVo> search(String bbsTitle) throws SQLException{
		String sql="select * from bbs where bbsTitle LIKE ? order by bbsIdx desc";
		List<BbsVo> searchList = new ArrayList<BbsVo>();
		ResultSet rs=null;
		try(
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql);
				){
			pstmt.setString(1, "%"+bbsTitle+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BbsVo bean = new BbsVo();
				bean.setBbsIdx(rs.getInt(1));
				bean.setBbsTitle(rs.getString(2));
				bean.setUserID(rs.getString(3));
				bean.setBbsDate(rs.getDate(4));
				bean.setBbsContent(rs.getString(5));
				searchList.add(bean);
			}
		} finally {
			if(rs!=null) rs.close();
		}
		System.out.println(searchList);
		return searchList;
	}
	// 게시글 숫자 증가
	public int getNext() {
		String sql="select bbsIdx from bbs order by bbsIdx desc";
		try (
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql);
				){
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	// 글 작성
	public int write(String bbsTitle, String userID, String bbsContent) {
		String sql="insert into bbs values (?,?,?,now(),?)";
		try (
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql);
				){
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, bbsContent);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	// 상세 게시글 조회
	public BbsVo getBbs(int bbsIdx) {
		String sql="select * from bbs where bbsIdx=?";
		try (
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setInt(1, bbsIdx);
			ResultSet rs=pstmt.executeQuery();
			rs=pstmt.executeQuery();
			if(rs.next()) {
				BbsVo bean = new BbsVo();
				bean.setBbsIdx(rs.getInt(1));
				bean.setBbsTitle(rs.getString(2));
				bean.setUserID(rs.getString(3));
				bean.setBbsDate(rs.getDate(4));
				bean.setBbsContent(rs.getString(5));
				return bean;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	// 게시글 수정
	public int update(int bbsIdx, String bbsTitle, String bbsContent) {
		String sql="update bbs set bbsTitle=?, bbsContent=?, bbsDate=now() where bbsIdx=?";
		try (
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsIdx);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	// 게시글 삭제
	public int delete(int bbsIdx) {
		String sql="delete from bbs where bbsIdx=?";
		try (
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setInt(1, bbsIdx);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
