package cn.itcast.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.domain.Vedio;
import cn.itcast.web.utils.JDBCUtils;

public class VideoDao {

	QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());

	public List<Vedio> findPrevVideo() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_vedio order by uploadTime desc limit 0,5";
		
		return qr.query(sql, new BeanListHandler<Vedio>(Vedio.class));
	}

	public List<Vedio> findVedioWithPage(int num,int n) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_vedio limit ?,?";
		return qr.query(sql, new BeanListHandler<Vedio>(Vedio.class),num,n);
	}

	public int getTotalRecords() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select count(*) from t_vedio";
		Long l=(Long) qr.query(sql, new ScalarHandler());
		return l.intValue();
	}

	public Vedio findVedioByVid(String vedioId) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from t_vedio where vedioId=?";		
		return qr.query(sql, new BeanHandler<Vedio>(Vedio.class),vedioId);
	}

	public void delVediobyId(String vedioId) throws SQLException {
		// TODO Auto-generated method stub
		String sql="delete from t_vedio where vedioId=?";		
		 qr.update(sql, vedioId);
	}

	public void addVedio(Vedio v) throws SQLException {
		// TODO Auto-generated method stub
		String sql="insert into t_vedio values(null,?,?,?,?,?,?)";
		Object[] params={v.getVedioName(),v.getVedioPro(),v.getVedioAttachment(),v.getAttachmentOldName(),
				v.getUploadTime(),v.getDel()};
		qr.update(sql, params);
	}
}
