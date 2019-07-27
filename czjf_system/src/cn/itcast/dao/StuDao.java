package cn.itcast.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.itcast.domain.Student;
import cn.itcast.web.utils.JDBCUtils;

public class StuDao {

	private QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource()); 
	
	public Student validatUserExist(String um) throws SQLException {
		// TODO Auto-generated method stub
		String sql="SELECT *  FROM t_stu WHERE stuNum=?";
	    Student stu=qr.query(sql, new BeanHandler<Student>(Student.class),um);
		return stu;
	}

	public Student stuLogin(String username, String password) throws SQLException {
		// TODO Auto-generated method stub
		String sql="SELECT *  FROM t_stu WHERE stuNum=? AND loginPw=?";
		//QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Student>(Student.class),username,password);
	}

}
