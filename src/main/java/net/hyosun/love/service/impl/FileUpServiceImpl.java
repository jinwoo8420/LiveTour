package net.hyosun.love.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.hyosun.love.service.FileUpService;

@Service
public class FileUpServiceImpl implements FileUpService {

	@Autowired
	private String upLoadFolder; // 프로필 업데이트 시 쓸 폴더

	@Autowired
	private String Biz_upLoadFolder; // 제휴요청 시 쓸 폴더

	@Override
	public String fileUp(MultipartFile file) {

		// 파일 정보가 없을 시 진행 X
		if (file == null) {

			return null;
		}

		File dir = new File(upLoadFolder);// 저장 할 폴더 확인

		if (!dir.exists()) {
			dir.mkdirs();
		}

		String originFileName = file.getOriginalFilename(); // 업로드 된 파일의 이름 getter

		// 1.UUID 문자열 생성
		String uuStr = UUID.randomUUID().toString();
		// 2. 원래 파일 이름과 UUID를 합성하여 새로운 파일 이름 지정
		String saveFileName = String.format("%s-%s", uuStr, originFileName);

		// 서버에 저장하기 위한 파일 객체 생성
		File saveFile = new File(upLoadFolder, saveFileName);

		try {
			file.transferTo(saveFile);
			return saveFileName;
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<String> filesUp(MultipartHttpServletRequest files) {

		return null;
	}

	@Override
	public void fileDelete(String fileName) {
		if (fileName == null) {
			return;
		}
		File deleteFile = new File(upLoadFolder, fileName); // 업로드 폴더와 파일 이름을 묶어서 파일 객체 생성

		if (deleteFile.exists()) { // 파일이 존재 할 때
			deleteFile.delete(); // 파일 삭제
		}

	}

	@Override
	public String fileup_NOUUID(MultipartFile file) { // UUID를 쓰지 않고 업로드를 위한 method
		if (file == null) { // 파일 정보가 없을 시 진행 X
			return null;
		}

		File dir = new File(Biz_upLoadFolder);// 저장 할 폴더 확인

		if (!dir.exists()) { // 폴더 없을 시 생성
			dir.mkdirs();
		}

		String originFileName = file.getOriginalFilename(); // 업로드 된 파일의 이름 getter

		// 서버에 저장하기 위한 파일 객체 생성
		File saveFile = new File(Biz_upLoadFolder, originFileName);

		try {
			file.transferTo(saveFile);
			return originFileName;
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
