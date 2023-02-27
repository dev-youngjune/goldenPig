package com.goldenPig;

import javax.servlet.http.HttpServletRequest;

public class ExtractPath {
	public ExtractPath() {;}
	
	public static String extractWithDot(HttpServletRequest req) {return req.getRequestURI().substring(req.getContextPath().length());}
	public static String extractWithoutDot(HttpServletRequest req) {return req.getRequestURI().replace(req.getContextPath(), "").split("\\.")[0];}
	
}
