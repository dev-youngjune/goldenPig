package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class AdminMemberModifyController implements Action{
// 유저 수정페이지
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		return null;
	}
}