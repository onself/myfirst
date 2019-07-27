package cn.itcast.service;

import java.sql.SQLException;

import cn.itcast.dao.StuDao;
import cn.itcast.domain.Student;

public class StuService {

	private StuDao dao=new StuDao();
	public Student validatUserExist(String um) throws SQLException {
		// TODO Auto-generated method stub
		
		return dao.validatUserExist(um);
	}
	public Student stuLogin(String username, String password) throws SQLException {
		// TODO Auto-generated method stub
		return dao.stuLogin(username,password);
	}

}
