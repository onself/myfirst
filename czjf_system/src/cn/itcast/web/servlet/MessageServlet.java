package cn.itcast.web.servlet;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.domain.Message;
import cn.itcast.domain.Student;
import cn.itcast.service.MessageService;
import cn.itcast.web.base.BaseServlet;
import cn.itcast.web.utils.PageModel;

public class MessageServlet extends BaseServlet {

	private MessageService messageService=new MessageService();
	
	//学生查看自己的师生交流信息
	public String findAllMessagesWithPage(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
        int num=Integer.parseInt(request.getParameter("num"));
        Student stu=(Student)request.getSession().getAttribute("stu");
        /*if(stu==null){
			request.setAttribute("msg", "您还没有登录,请先登录");
			return "/site/index.jsp";
		}*/
        PageModel model=messageService.findAllMessagesWithPage(num,stu);
        request.setAttribute("page", model);
		return "/site/message/messageAll.jsp";
	}
	
	//教师查看师生交流模块
	public String findAllMessagesWithPageByTeacher(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int num=Integer.parseInt(request.getParameter("num"));
		PageModel model=messageService.findAllMessagesWithPageByTeacher(num);
        request.setAttribute("page", model);
		return "/atea/message/messageMana.jsp";
	}
	
	//学生提问
	public String addMessage(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String content=request.getParameter("content");
		Student stu=(Student) request.getSession().getAttribute("stu");
		
		Message msg=new Message();
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");		
		msg.setLeveWordTime(sdf.format(new Date()));
		msg.setContent(content);
		msg.setStuId(stu.getStuId());
		messageService.addMessage(msg); 
		//转发到分页查询全部message模块
		response.sendRedirect("/czjf_system/MessageServlet?method=findAllMessagesWithPage&num=1");
		return null;
	}
	
	public String findMessageById(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String messageId=request.getParameter("id");
		request.setAttribute("msgId", messageId);
		return "/atea/message/messageReplay.jsp";
	}
	
	
	public String replayMessage(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id=request.getParameter("id");
		String replay=request.getParameter("replay");
		messageService.replayMessage(id,replay);
		response.sendRedirect("/czjf_system/MessageServlet?method=findAllMessagesWithPageByTeacher&num=1");
		return null;
	}
}
