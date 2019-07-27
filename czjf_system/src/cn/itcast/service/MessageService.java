package cn.itcast.service;

import java.sql.SQLException;
import java.util.List;

import cn.itcast.dao.MessageDao;
import cn.itcast.domain.Message;

import cn.itcast.domain.Student;
import cn.itcast.web.utils.PageModel;

public class MessageService {

	private MessageDao messageDao=new MessageDao();
	
	public PageModel findAllMessagesWithPage(int num,Student stu) throws SQLException {
		// TODO Auto-generated method stub
		int totalRecords=messageDao.getTotalRecords(stu);
		List<Message> list=messageDao.findAllMessagesWithPage((num-1)*5,5,stu);
		PageModel model=new PageModel(num,totalRecords,5);
		model.setList(list);
		model.setUrl("MessageServlet?method=findAllMessagesWithPage");
		return model;
	}

	public void addMessage(Message msg) throws SQLException {
		// TODO Auto-generated method stub
		messageDao.addMessage(msg);
	}

	public PageModel findAllMessagesWithPageByTeacher(int num) throws SQLException {
		// TODO Auto-generated method stub
		int totalRecords=messageDao.getTotalRecordsByTeacher();
		List<Message> list=messageDao.findAllMessagesWithPageByTeacher((num-1)*5,5);
		PageModel model=new PageModel(num,totalRecords,5);
		model.setList(list);
		model.setUrl("MessageServlet?method=findAllMessagesWithPageByTeacher");
		return model;
	}

	public void replayMessage(String id, String replay) throws SQLException {
		// TODO Auto-generated method stub
		messageDao.replayMessage(id, replay); 
	}

}
