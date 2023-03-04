package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

public class AdminFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
			
//		저축 게시판 목록
		if(target.equals("/bankList")) {
			result = new Result();
			
		}else if(target.equals("/bannerList")) {
			new AdminBannerListController().execute(req, resp);
		
		}else if(target.equals("/bannerRegister")) {
			new AdminBannerRegisterController().execute(req, resp);
			
		}else if(target.equals("/bannerRegisterOk")) {
			new AdminBannerRegisterOkController().execute(req, resp);

//		게시판 상세보기
		}else if(target.equals("/adminBoardDetail")) {	// 저축 게시판 상세보기
			result = new AdminBoardDetailController().execute(req, resp);
			
		}else if(target.equals("/adminFreeBoardDetail")) {	// 자유 게시판 상세보기
			result = new AdminFreeBoardDetailController().execute(req, resp);
			
		}else if(target.equals("/adminBoardList")) {	// 저축 게시판
			result = new AdminBoardListController().execute(req, resp);
			
		}else if(target.equals("/adminFreeBoardList")) {	// 자유 게시판
			result = new AdminFreeBoardListController().execute(req, resp);
		
		}else if(target.equals("/adminBoardDelete")) {	// 게시판 삭제
			new AdminBoardDeleteController().execute(req, resp);
			
		}else if(target.equals("/adminFreeBoardDelete")) {	// 게시판 삭제
			new AdminFreeBoardDeleteController().execute(req, resp);
			
		}else if(target.equals("/memberList")) {
			result = new AdminMemberListController().execute(req, resp);

//		회원 상세보기	
		}else if(target.equals("/memberDetail")) {
			new AdminMemberDetailController().execute(req, resp);
			
//		회원정보 변경 페이지			
		}else if(target.equals("/memberModify")) {
			new AdminMemberModifyController().execute(req, resp);
			
		}else if(target.equals("/memberModifyOk")) {
			new AdminMemberModifyOkController().execute(req, resp);
			
		}else if(target.equals("/adminNoticeDetail")) {
			result = new AdminNoticeDetailController().execute(req, resp);

		}else if(target.equals("/adminNoticeModify")) {
			result = new AdminNoticeModifyController().execute(req, resp);
			
		}else if(target.equals("/adminNoticeOkModify")) {
			result = new AdminNoticeModifyOkController().execute(req, resp);
			
		}else if(target.equals("/adminNoticeList")) {
			result = new AdminNoticeListController().execute(req, resp);
		
		}else if(target.equals("/adminNoticeWrite")) {
			result = new AdminNoticeWriteController().execute(req, resp);
			
		}else if(target.equals("/adminNoticeWriteOk")) {
			result = new AdminNoticeWriteOkController().execute(req, resp);
			
		}else if(target.equals("/adminNoticeDeleteOk")) {
			new AdminNoticeDeleteOkController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}