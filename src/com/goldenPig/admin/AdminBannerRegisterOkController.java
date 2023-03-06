package com.goldenPig.admin;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.banner.domain.BannerVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminBannerRegisterOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");		// 디비에 배너 추가할 한글의 인코딩 설정
		BannerVO bannerVO = new BannerVO();		// 배너 등록 시 매개변수로 필요한 VO 객체 선언
		AdminDAO adminDAO = new AdminDAO();		// 관리자 배너 관리 메소드를 정의한 객체 선언
		Result result = new Result();			// FrontController로 전달할 경로 및 방식 객체 선언
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; // 5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
//		1. 첫번째 인자는 폼에서 가져온 인자 값을 얻기 위해 request객체를 전달한다.
//		2. 두번째 인자는 업로드 될 파일의 위치를 입력한다.
//		3. 세번째는 파일 업로드 최대 용량 크기를 의미하며 최대 크기를 넘는경우 Exception이 발생한다.
//		4. 네번째 인자는 한글 이름이 넘어올 경우 한글에 문제되지 않도록 인코딩을 지정한다.
//		5. 다섯번째 인자는 똑같은 파일을 업로드 할 경우 중복되지 않도록 파일이름을 변환해 주는 기능을 갖는다.
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String bannerOriginalName = multipartRequest.getOriginalFileName(fileName);	// jsp 파일의 name="banner"의 originalFileName을 가져온다.
			String bannerSystemName = multipartRequest.getFilesystemName(fileName);		// jsp 파일의 name="banner"의 systemName을 가져온다.
			
			if(bannerOriginalName == null) {continue;}
			
			bannerVO.setBannerOriginalName(bannerOriginalName);
			bannerVO.setBannerSystemName(bannerSystemName);
			
			adminDAO.adminBannerInsert(bannerVO);
		}
		
//		String bannerSystemName = multipartRequest.getFilesystemName("banner");		// jsp 파일의 name="banner"의 systemName을 가져온다.
//		String bannerOriginalName = multipartRequest.getOriginalFileName("banner");	// jsp 파일의 name="banner"의 originalFileName을 가져온다.
		
//		if (bannerOriginalName != null) {
//			bannerVO.setBannerSystemName(bannerSystemName);		// bannerVO 객체에 화면에서 가져온 정보를 담는다.
//			bannerVO.setBannerOriginalName(bannerOriginalName);
//			adminDAO.adminBannerInsert(bannerVO);	// 정보를 담은 bannerVO를 매개변수로 전달한다.
//		}
		
		result.setPath(req.getContextPath() + "/adminBannerList.admin");	// 등록 완료 시 이동할 다음 페이지 경로
		result.setRedirect(true);
		
		return result;
	}

}
