package com.goldenPig.board;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.board.dao.BoardSavingImgDAO;
import com.goldenPig.board.domain.BoardSavingImgVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteOkController implements Action{
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		insertOk(req, resp);
		
		result.setPath(req.getContextPath() + "/boardListOk.board");
		result.setRedirect(REDIRECT);
//		result.setRedirect(FORWORD);
		return result;
	}
	
	public void insertOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Map<String, Object> boardMap = new HashMap<String, Object>();
		Map<String, Object> imageMap = new HashMap<String, Object>();
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		memberId = memberId == null ? 1L : memberId;
		
		boardMap.put("title", req.getParameter("title"));
		boardMap.put("content", (String)req.getParameter("content"));
		boardMap.put("memberId", memberId);
		boardDAO.insertBoard(boardMap);
		
		imageMap.put("", null);
//		boardMap.put("memberId", (Long)req.getSession().getAttribute("memberId"));
		
		
//		boardVO.setBoardTitle((String)req.getAttribute("title"));
//		boardVO.setBoardContent((String)req.getAttribute("content"));
//		boardVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		
	}
	
	public void writeOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		BoardSavingImgVO imgVO = new BoardSavingImgVO();
		BoardDAO boardDAO = new BoardDAO();
		BoardSavingImgDAO imgDAO = new BoardSavingImgDAO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		Long boardCurrentSequence = 0L;
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		Map<String, Object> boardMap = new HashMap<String, Object>();
		
		memberId = memberId == null ? 1L : memberId;
		
		boardMap.put("title", req.getParameter("title"));
		boardMap.put("content", (String)req.getParameter("content"));
		boardMap.put("memberId", memberId);
		boardDAO.insertBoard(boardMap);
		boardCurrentSequence = boardDAO.getCurrentSequence();
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			imgVO.setBoardImgName(fileOriginalName);
			imgVO.setBoardImgSystemName(fileSystemName);
			imgVO.setBoardId(boardCurrentSequence);
			
			imgDAO.insert(imgVO);
		}
	}
	
}
