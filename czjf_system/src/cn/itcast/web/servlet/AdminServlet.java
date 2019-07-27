package cn.itcast.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.domain.Admin;
import cn.itcast.service.AdminService;
import cn.itcast.web.base.BaseServlet;

public class AdminServlet extends BaseServlet {

	private AdminService adminService=new AdminService();
	public String adminLogin(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String userName=request.getParameter("userName");
		String userPw=request.getParameter("userPw");
		
		Admin admin=adminService.adminLogin(userName,userPw);
		if(admin==null){
			request.setAttribute("msg", "用户名不存在或密码错误");
			return "/login.jsp";
		}else{
			request.getSession().setAttribute("admin", admin);
			response.sendRedirect("/czjf_system/admin/index.jsp");
			return null;
		}
		
	}

}
