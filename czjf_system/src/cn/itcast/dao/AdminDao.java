package cn.itcast.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.itcast.domain.Admin;
import cn.itcast.web.utils.JDBCUtils;

public class AdminDao {

	private QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
	
	public Admin adminLogin(String userName, String userPw) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_admin where userName=? and userPw=?";
		//Object[] params={userName,userPw};
		
		return qr.query(sql,new BeanHandler<Admin>(Admin.class),userName,userPw);
	}

}
