package com.goldenPig.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MemberSMSController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String api_key = "NCSSJHRC2MJLJCUB";
		String api_secret = "HPMLM8ZX4IXDEBWLXU0TNB6RFDTJIZZ3";
	    Message coolsms = new Message(api_key, api_secret);
		PrintWriter out = resp.getWriter();
		MemberDAO memberDAO = new MemberDAO();
	    String phoneNumber = req.getParameter("memberPhoneNumber");
	    String code = "";
	    JSONObject json = new JSONObject();
	    Random random = new Random();
	
		    for (int i = 0; i < 4; i++) {
		    	code += random.nextInt(10);
		    }
		       
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", phoneNumber);
		    params.put("from", "01012341234");
		    params.put("type", "SMS");
		    params.put("text", "골든피그 인증번호 [ " + code + "] 입니다.");
		    params.put("app_version", "test app 1.2"); // application name and version
	
		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		      
		    } catch (CoolsmsException e) {
		    	System.out.println(e.getMessage());
		    	System.out.println(e.getCode());
		    }
		    
		    System.out.println(code);
		    try {
				json.put("code", code);
				out.print(json.toJSONString());
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				out.close();
			}
		    
		
		return null;
	}

}
