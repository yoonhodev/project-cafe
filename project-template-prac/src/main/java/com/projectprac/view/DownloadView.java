package com.projectprac.view;

import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;

import com.projectprac.dto.BoardAttachDto;


//public class DownloadView implements View {
//	@Override
//	public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//		// TODO Auto-generated method stub
//		
//	}

public class DownloadView extends AbstractView {

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, // 컨트롤러에서 전달한 데이터 수신
										   HttpServletRequest req, 
										   HttpServletResponse resp) throws Exception {
		
		BoardAttachDto attachment = (BoardAttachDto)model.get("attachment");
		
		//브라우저가 응답 컨텐츠를 다운로드로 처리하도록 정보 설정
		resp.setContentType("application/octet-stream;charset=utf-8");	
		//브라우저에게 다운로드하는 파일의 이름을 알려주는 코드 
		resp.addHeader("Content-Disposition", 
				"Attachment;filename=\"" + 
				new String(attachment.getUserFileName().getBytes("utf-8"), "ISO-8859-1") + "\""); // 보여줄땐 사용자 파일네임
		
		//ServletContext : JSP의 application객체와 동일한 객체
		ServletContext application = req.getServletContext();
		
		String path = application.getRealPath("/resources/assets/images/cafe-out-image-folder/" + attachment.getSavedFileName()); // 다운로드할땐 저장된 파일네임
		
		FileInputStream fis = new FileInputStream(path); 	//파일을 읽는 도구
		OutputStream fos = resp.getOutputStream();			//브라우저에게 전송하는 도구
		
		while (true) {
			int data = fis.read();  //파일에서 1byte 읽기
			if (data == -1) { //더 이상 읽을 데이터가 없다면 (EOF)
				break;
			}
			fos.write(data); //응답 스트림에 1byte 쓰기
		}
		
		fis.close();
		fos.close();
		
	}
	

}
