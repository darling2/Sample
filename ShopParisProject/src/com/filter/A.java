package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class A implements Filter {

	@Override
	public void destroy() {
		System.out.println("destroy");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 요청할 때마다 실행되는 doFilter
		System.out.println("요청22 doFilter"); //요청 필터
		chain.doFilter(request, response);
		System.out.println("응답22 doFilter");
	}
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("init22");
	}
}
