package cn.itcast.service;

import java.sql.SQLException;
import java.util.List;

import cn.itcast.dao.TeachDao;
import cn.itcast.domain.Teacher;
import cn.itcast.web.utils.PageModel;

public class TeachService {

	private TeachDao teachDao=new TeachDao();
	
	public Teacher teachLogin(String userName, String userPw) throws SQLException {
		// TODO Auto-generated method stub
		return teachDao.teachLogin(userName,userPw);
	}

	public PageModel findAllTeaWithPage(int num) throws SQLException {
		// TODO Auto-generated method stub
		int totalRecords=teachDao.getTotalRecords();
		List<Teacher> list=teachDao.findAllTeaWithPage(num,5);
		
		PageModel model=new PageModel(num, totalRecords, 5);
		
		model.setList(list);
		model.setUrl("TeachServlet?method=findAllTeaWithPage");
		
		return model;
	}

	public int delTeacherById(String teaId) throws SQLException {
		// TODO Auto-generated method stub
		
		return teachDao.delTeacherById(teaId);
	}

	public void addTeacher(Teacher t) throws SQLException {
		// TODO Auto-generated method stub
		teachDao.addTeacher(t);
	}

	public void modifyTeacher(Teacher t, int teachId) throws SQLException {
		// TODO Auto-generated method stub
		teachDao.modifyTeacher(t,teachId);
	}

}
