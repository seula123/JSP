package com.project.jr.user.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.project.jr.main.DBUtil;
import com.project.jr.user.model.UserDTO;

public class UserDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public UserDAO() {
		this.conn = DBUtil.open();
	}

	public UserDTO login(UserDTO dto) {

		try {
			
			String sql = "select * from tblUserInfo where id = ? and pw = ?";
			
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs=pstat.executeQuery();
			
			
			if(rs.next()) {
				
				UserDTO result=new UserDTO();
				result.setId(rs.getString("id"));
				result.setPw(rs.getString("pw"));
				result.setName(rs.getString("name"));
				result.setBirthDate(rs.getString("birthDate"));
				result.setSex(rs.getString("sex"));
				result.setEMail(rs.getString("eMail"));
				result.setPhoneNum(rs.getString("phoneNum"));
				result.setJoinDate(rs.getString("joinDate"));
				result.setUserStatus(rs.getInt("userStatus"));
				
				return result;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
	
}
