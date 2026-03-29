package com.lhg.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import com.mysql.cj.jdbc.MysqlDataSource;

public class UserDao {
	DataSource dataSource;
	
	public UserDao() {
		MysqlDataSource mds=new MysqlDataSource();
		mds.setUser("root");
		mds.setPassword("lhg37099");
		mds.setURL("jdbc:mysql://localhost:3306/tour_project");
		dataSource=mds;
	}
	
	public int register(UserVo bean) {
		String sql="insert into user values (?,?,?,?,?,?,?)";
		try(
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql);
				){
			System.out.println(bean);
			pstmt.setString(1, bean.getUserID());
			pstmt.setString(2, bean.getUserPW());
			pstmt.setString(3, bean.getUserName());
			pstmt.setString(4, bean.getUserGender());
			pstmt.setString(5, bean.getUserEmail());
			pstmt.setString(6, bean.getFileName());
			pstmt.setString(7, bean.getFileRealName());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int login(String userID, String userPW) {
		String sql="select userPW from user where userID=?";
		
		try(
				Connection conn=dataSource.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql);
				) {
			pstmt.setString(1, userID);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPW)) {
					return 1; // login success
				} else {
					return 0; // login fail
				}
			}
			return -1; // id none
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // db error
	}
}
