package cn.itcast.service;

import java.sql.SQLException;
import java.util.List;

import cn.itcast.dao.VideoDao;

import cn.itcast.domain.Vedio;
import cn.itcast.web.utils.PageModel;

public class VideoService {
	
	private VideoDao dao=new VideoDao();

	public List<Vedio> findPrevVideo() throws SQLException {
		// TODO Auto-generated method stub
		return dao.findPrevVideo();
	}

	public PageModel findVedioWithPage(int num) throws SQLException {
		// TODO Auto-generated method stub
		
		int totalRecords=dao.getTotalRecords();
		PageModel pm=new PageModel(num,totalRecords,5);
		List<Vedio> list=dao.findVedioWithPage((num-1)*5,5);
		pm.setList(list);
		return pm;
	}

	public Vedio findVedioByVid(String vedioId) throws SQLException {
		// TODO Auto-generated method stub
		return dao.findVedioByVid(vedioId);
	}

	public PageModel findAllVediosWithPageByTeacher(int num) throws SQLException {
		// TODO Auto-generated method stub
		int totalRecords=dao.getTotalRecords();
		PageModel pm=new PageModel(num,totalRecords,5);
		List<Vedio> list=dao.findVedioWithPage((num-1)*5,5);
		pm.setList(list);
		pm.setUrl("VideoServlet?method=findAllVediosWithPageByTeacher");
		return pm;
	}

	public void delVediobyId(String vedioId) throws SQLException {
		// TODO Auto-generated method stub
		dao.delVediobyId(vedioId);
	}

	public void addVedio(Vedio v) throws SQLException {
		// TODO Auto-generated method stub
		dao.addVedio(v);
	}

}
