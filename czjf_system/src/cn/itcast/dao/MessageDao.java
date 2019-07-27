package cn.itcast.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.domain.Message;
import cn.itcast.domain.Student;
import cn.itcast.web.utils.JDBCUtils;

public class MessageDao {

	QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
	
	public int getTotalRecords(Student stu) throws SQLException {
		String sql="select count(*) from t_message where stuId=?";
		Long l=(Long) qr.query(sql, new ScalarHandler(),stu.getStuId());
		return l.intValue();
	}

	public List<Message> findAllMessagesWithPage(int i, int j,Student stu) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_message where stuId=? order by leveWordTime desc limit ?,?";
		return qr.query(sql, new BeanListHandler<Message>(Message.class), stu.getStuId(),i,j);
	}

	public void addMessage(Message msg) throws SQLException {
		// TODO Auto-generated method stub
		String sql="insert into t_message(content,leveWordTime,stuId) values(?,?,?)";
		Object[] params={msg.getContent(),msg.getLeveWordTime(),msg.getStuId()};
		qr.update(sql, params);
	}

	public int getTotalRecordsByTeacher() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select count(*) from t_message ";
		Long l=(Long) qr.query(sql, new ScalarHandler());
		return l.intValue();
	}

	public List<Message> findAllMessagesWithPageByTeacher(int i, int j) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_message order by leveWordTime desc limit ?,?";
		return qr.query(sql, new BeanListHandler<Message>(Message.class),i,j);
	}

	public void replayMessage(String id, String replay) throws SQLException {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String nowDate=sdf.format(new Date());
		String sql="update t_message set replay=? ,replayTime=? where messageId=?";
		qr.update(sql, replay,nowDate,id);
	}

}
