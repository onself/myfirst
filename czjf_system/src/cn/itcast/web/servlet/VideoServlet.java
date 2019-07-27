package cn.itcast.web.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;


import cn.itcast.domain.Student;
import cn.itcast.domain.Vedio;
import cn.itcast.service.VideoService;
import cn.itcast.web.base.BaseServlet;
import cn.itcast.web.utils.DownLoadUtils;
import cn.itcast.web.utils.PageModel;
import cn.itcast.web.utils.UploadUtils;

public class VideoServlet extends BaseServlet {


	private VideoService videoService=new VideoService();
	
	/*
	 * 展示前一部分视频数据
	 */
	public String findPrevVideo(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
        
		List<Vedio> list=videoService.findPrevVideo();
		request.setAttribute("list", list);
		Student stu=(Student) request.getSession().getAttribute("stu");
		if(stu==null){
			request.setAttribute("msg", "您还没有登录,请先登录");
			return "/site/index.jsp";
		}
		//转发到vedioPrev.jsp
        return "/site/vedio/vedioPrev.jsp";     
	}

	/*
	 * 分页查询所有的视频
	 */
	public String findVedioWithPage(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int num=Integer.parseInt(request.getParameter("num"));
		PageModel pm=videoService.findVedioWithPage(num);
		//1.接受当前页参数
		//2.调用业务层功能,返回pageModel
		request.setAttribute("page", pm);
		return "/site/vedio/vedioAll.jsp";
	}

	/*
	 * 根据id查询到对应的视频
	 */
	public String findVedioByVid(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String vedioId=request.getParameter("id");
		Vedio vedio=videoService.findVedioByVid(vedioId);
		request.setAttribute("vedio", vedio);
		return "/site/vedio/vedioDetail.jsp";
	}
	
	/*
	 * 下载视频
	 */
	public String downloadVedio(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String vedioId=request.getParameter("id");
		Vedio v=videoService.findVedioByVid(vedioId);
		/*URL path=this.getClass().getClassLoader().getResource(v.getVedioAttachment());*/
		String path=getServletContext().getRealPath("/upload/");
		
		String contentType=this.getServletContext().getMimeType(path+v.getVedioAttachment());
		String contentDisposition="attachment;filename="+v.getVedioAttachment();
		
		
		response.setHeader("content-Type", contentType);
		//处理下载文件中文名称问题
		DownLoadUtils.setConentType(request, v.getVedioAttachment(), response);
		//response.setHeader("content-Disposition", contentDisposition);
		
		FileInputStream in=new FileInputStream(new File(path,v.getVedioAttachment()));
		ServletOutputStream out=response.getOutputStream();
		IOUtils.copy(in, out);
		
		IOUtils.closeQuietly(in);
		IOUtils.closeQuietly(out);
		
		return null;//不需要转发，只需return null
	}
	
	
	
	/*
	 * 播放视频
	 */
	public String playVedioById(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String vedioId=request.getParameter("id");
		Vedio v=videoService.findVedioByVid(vedioId);
		request.setAttribute("vedio",v);
		return "/play/playVedio.jsp";
	}
	
	/*
	 * 
	 */
	public String findAllVediosWithPageByTeacher(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int num=Integer.parseInt(request.getParameter("num"));
		PageModel pm=videoService.findAllVediosWithPageByTeacher(num);
		//1.接受当前页参数
		//2.调用业务层功能,返回pageModel
		request.setAttribute("page", pm);
		return "/atea/vedio/vedioMana.jsp";
	}
	
	
	public String delVediobyId(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String vedioId=request.getParameter("vedioId");
		videoService.delVediobyId(vedioId);
		response.sendRedirect("/czjf_system/VideoServlet?method=findAllVediosWithPageByTeacher&num=1");
		return null;
	}
	
	/*
	 * 上传视频
	 */
	public String addVedio(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Map<String,String> map=new HashMap<String,String>();//携带表单名称以及表单参数
		
		Vedio v=new Vedio();
		//创建工厂
		DiskFileItemFactory factory=new DiskFileItemFactory();
		factory.setSizeThreshold(1024*1024*20);
		//使用工厂创建解析器
		ServletFileUpload fileUpload=new ServletFileUpload(factory);
		fileUpload.setHeaderEncoding("utf-8");
		List<FileItem> fileItems=fileUpload.parseRequest(request);
		
		for(FileItem item:fileItems){
			if(item.isFormField()){
				//判断当前表单项是否为普通表单项
				map.put(item.getFieldName(), item.getString("utf-8"));//分别为表单字段name属性和属性值
			
			}else{
				String fileName=item.getName();//获得文件的名称
				
				String realPath=getServletContext().getRealPath("/upload/");
				String uuidName=UploadUtils.getUUIDName(fileName);
				
				File f=new File(realPath,uuidName);
				if(!f.exists()) {//如果文件不存在就创建
					f.createNewFile();
					//创建文件此时其中没有内容
				}
				item.write(f);//将二进制的数据输出到文件中
				
				map.put("attachmentOldName", fileName);
				map.put("vedioAttachment", uuidName);
			}
		}
		BeanUtils.populate(v, map);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		
		v.setUploadTime(sdf.format(new Date()));
		v.setDel("no");
		
		videoService.addVedio(v);
		
		response.sendRedirect("/czjf_system/VideoServlet?method=findAllVediosWithPageByTeacher&num=1");
		return null;
	}
}
