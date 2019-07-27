package cn.itcast.web.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.domain.Student;
/**
 * 统一编码,解决乱码
 */
public class EncodingFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		//1.强转
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response=(HttpServletResponse) resp;
		//2.放行
		
		chain.doFilter(new MyRequest(request), response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}



