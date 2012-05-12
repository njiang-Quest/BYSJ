package com.bysj.common;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import javax.servlet.Filter;
import javax.servlet.http.HttpServletRequest;

/**
 * ���Ĺ�����
 * @author Administrator
 *
 */
public class DataFilter implements Filter {

	 protected String encoding = null;

	 protected FilterConfig filterConfig = null;

	 protected boolean ignore = true;


	public void destroy() {
		 this.encoding = null;
		  this.filterConfig = null;

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		 if (ignore || (request.getCharacterEncoding() == null)) {
			   String encoding = this.selectEncoding(request);
			   if (encoding != null){
			    request.setCharacterEncoding(encoding);
			   }

			  }
			  chain.doFilter(request, response);

			 }


	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println(">>>>>>>>>>>���Ĺ�������ʼ����ʼ>>>>>>>>>>>>>");
		
		  this.filterConfig = filterConfig;
		  this.encoding = filterConfig.getInitParameter("encoding");
		  String value = filterConfig.getInitParameter("ignore");
		  if (value == null) {
		   this.ignore = true;
		  } else if (value.equalsIgnoreCase("true")) {
		   this.ignore = true;
		  } else {
		   this.ignore = false;
		  }
		  
		  System.out.println(">>>>>>>>>>>���Ĺ�������ʼ������>>>>>>>>>>>>>");

	}
	 protected String selectEncoding(ServletRequest request) {
		  return (this.encoding);
		 }

	

}
