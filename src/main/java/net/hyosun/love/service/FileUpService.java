package net.hyosun.love.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileUpService {
	public String fileUp(MultipartFile file);

	public List<String> filesUp(MultipartHttpServletRequest files);

	public void fileDelete(String fileName);

	public String fileup_NOUUID(MultipartFile file);

}
