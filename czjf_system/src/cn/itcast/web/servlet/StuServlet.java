package cn.itcast.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.domain.Student;
import cn.itcast.service.StuService;
import cn.itcast.web.base.BaseServlet;

public class StuServlet extends BaseServlet {

	
	private StuService service=new StuService();
	//校验用户名是否存在的功能
	public String validatUserExist(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//由ajax发起的，所以不需要转发
       String um=request.getParameter("username");
       Student stu=service.validatUserExist(um);
       if(stu==null){
    	   //不存在当前学号
    	
    	   response.getWriter().print("no");
       }else{
    	   //存在当前学号
    	   
    	   response.getWriter().print("yes");
       }
	   return null;
	}
	
	public String stuLogin(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
        String username=request.getParameter("userName");
        String password=request.getParameter("userPw");
        
        Student stu=service.stuLogin(username,password);
        
        if(stu!=null){
        	//重定向到/site/index.jsp
        	request.getSession().setAttribute("stu", stu);
        	response.sendRedirect("/czjf_system/site/index.jsp");
        	return null;
        }else{
        	request.setAttribute("msg", "密码错误");
        	return "/site/index.jsp";
        }
	}
	
	
	public String stuLogout(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.getSession().invalidate();
		//重定向到首页		
		response.sendRedirect("/czjf_system/site/index.jsp");
		return null;
	}
	
	
}
