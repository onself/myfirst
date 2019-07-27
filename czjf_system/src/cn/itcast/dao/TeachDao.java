package cn.itcast.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.domain.Admin;
import cn.itcast.domain.Teacher;
import cn.itcast.domain.Vedio;
import cn.itcast.web.utils.JDBCUtils;

public class TeachDao {

	private QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
	
	public Teacher teachLogin(String userName, String userPw) throws SQLException {
	
			String sql="select * from t_tea where loginName=? and loginPw=?";
				
			return qr.query(sql,new BeanHandler<Teacher>(Teacher.class),userName,userPw);
	}

	public int getTotalRecords() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select count(*) from t_tea";
		Long l=(Long) qr.query(sql, new ScalarHandler());
		return l.intValue();
	}

	public List<Teacher> findAllTeaWithPage(int i, int j) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_tea limit ?,?";
		return qr.query(sql, new BeanListHandler<Teacher>(Teacher.class),(i-1)*5,j);
	}

	public int delTeacherById(String teaId) throws SQLException {
		// TODO Auto-generated method stub
		String sql="delete from t_tea where teaId=?";		
		return qr.update(sql, teaId);
	}

	public void addTeacher(Teacher t) throws SQLException {
		// TODO Auto-generated method stub
		String sql="INSERT INTO t_tea(teaId,teaNum,teaRealName,teaSex,teaAge,loginName,loginPw,del) VALUES(null,? , ? , ? , ? , ? , ? , ?)";
		Object[] params= {t.getTeaNum(),t.getTeaRealName(),t.getTeaSex(),t.getTeaAge(),t.getLoginName(),t.getLoginPw(),"no"};
		
		qr.update(sql,params);
	}

	public void modifyTeacher(Teacher t, int teachId) throws SQLException {
		// TODO Auto-generated method stub
		String sql="update t_tea set teaNum=?,teaRealName=?,teaSex=?,teaAge=?,loginName=?,loginPw=? where teaId=?";
	    Object[] params={t.getTeaNum(),t.getTeaRealName(),t.getTeaSex(),t.getTeaAge(),
	    		t.getLoginName(),t.getLoginPw(),teachId};
	    qr.update(sql, params);
	}

	

}
