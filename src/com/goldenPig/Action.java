package com.goldenPig;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	final boolean REDIRECT = true;
	final boolean FORWORD = false;
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException;
}
