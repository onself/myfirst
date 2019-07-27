package cn.itcast.service;

import java.sql.SQLException;

import cn.itcast.dao.AdminDao;
import cn.itcast.domain.Admin;

public class AdminService {

	private AdminDao adminDao=new AdminDao();
	
	public Admin adminLogin(String userName, String userPw) throws SQLException {
		// TODO Auto-generated method stub
		
		return adminDao.adminLogin(userName,userPw);
	}

}
