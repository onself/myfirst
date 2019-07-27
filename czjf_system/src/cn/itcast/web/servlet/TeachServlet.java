package cn.itcast.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.itcast.domain.Admin;
import cn.itcast.domain.Teacher;
import cn.itcast.service.TeachService;
import cn.itcast.web.base.BaseServlet;
import cn.itcast.web.utils.PageModel;


public class TeachServlet extends BaseServlet {

	private TeachService teachService=new TeachService();
	
	public String teachLogin(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String userName=request.getParameter("userName");
		String userPw=request.getParameter("userPw");
		
		Teacher teacher=teachService.teachLogin(userName,userPw);
		if(teacher==null){
			request.setAttribute("msg", "用户名不存在或密码错误");
			return "/login.jsp";
		}else{
			
			request.getSession().setAttribute("teacher", teacher);
			response.sendRedirect("/czjf_system/atea/index.jsp");
			return null;
		}
	}
	public String findAllTeaWithPage(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	    int num=Integer.parseInt(request.getParameter("num"));
	    PageModel page=teachService.findAllTeaWithPage(num);
	    
	    request.setAttribute("page", page);
		return "/admin/tea/teaMana.jsp";
	}
	
	
	public String delTeacherById(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String teaId=request.getParameter("teaId");
		int count=teachService.delTeacherById(teaId);
		response.sendRedirect("/czjf_system/TeachServlet?method=findAllTeaWithPage&num=1");
		return null;
	}
	public String addTeacher(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String teaNum=request.getParameter("teaNum");
		String teaRealName=request.getParameter("teaRealName");
		String teaSex=request.getParameter("teaSex");
		String teaAge=request.getParameter("teaAge");
		String loginName=request.getParameter("loginName");
		String loginPw=request.getParameter("loginPw");
		
		Teacher t=new Teacher();
		t.setTeaNum(teaNum);
		t.setTeaRealName(teaRealName);
		t.setTeaSex(teaSex);
		t.setTeaAge(teaAge);
		t.setLoginName(loginName);
		t.setLoginPw(loginPw);
		
		teachService.addTeacher(t);
		
		response.sendRedirect("/czjf_system/TeachServlet?method=findAllTeaWithPage&num=1");
		return null;
	}
	public String modifyTeacher(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Teacher teacher=(Teacher) request.getSession().getAttribute("teacher");
		int teachId=teacher.getTeaId();
		//System.out.println(teachId);
		String teaNum=request.getParameter("teaNum");
		String teaRealName=request.getParameter("teaRealname");
		String teaSex=request.getParameter("teaSex");
		String teaAge=request.getParameter("teaAge");
		String loginName=request.getParameter("loginName");
		String loginPw=request.getParameter("loginPw");
		//System.out.println(teaNum+" "+teaRealName+" "+teaSex+" "+teaAge+" "+loginName+" "+loginPw);
		Teacher t=new Teacher();
		t.setTeaNum(teaNum);
		t.setTeaRealName(teaRealName);
		t.setTeaSex(teaSex);
		t.setTeaAge(teaAge);
		t.setLoginName(loginName);
		t.setLoginPw(loginPw);
		
		teachService.modifyTeacher(t,teachId);
		response.sendRedirect("/czjf_system/TeachServlet?method=findAllTeaWithPage&num=1");
		return null;
	}
	
	
	
}
