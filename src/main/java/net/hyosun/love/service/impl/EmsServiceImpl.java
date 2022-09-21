package net.hyosun.love.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.UUID;

import org.springframework.core.io.ResourceLoader;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.hyosun.love.model.EmsVO;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.service.EmsService;

@Service
@Slf4j
public class EmsServiceImpl implements EmsService {

	private final ResourceLoader loader;
	

	public EmsServiceImpl(ResourceLoader loader) {
		this.loader=loader;
	}

	@Override
	public void sendMail(EmsVO emsVO) {
	}

	@Override
	public void sendMail(EmsVO emsVO, UserVO userVO) {
		File htmlFile = null;
		Scanner scan = null;
		try {
			htmlFile = loader.getResource("classpath:mail_template.html").getFile();
			scan = new Scanner(htmlFile);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// mail 전송하기 전에 필수정보에 대해서 확인
		log.debug("받는사람 Email : {}", emsVO.getE_to_email());
		log.debug("받는사람 이름 : {}", emsVO.getE_to_name());
		log.debug("제목 : {}", emsVO.getE_subject());

		String uuStr = UUID.randomUUID().toString();
		userVO.setKey_ok(uuStr);

		StringBuilder bodyText = new StringBuilder();
		while (scan.hasNext()) {
			String line = scan.nextLine();

			line = line.replace("@이름", emsVO.getE_to_name());
			line = line.replace("@email", emsVO.getE_to_email());
			line = line.replace("@key", uuStr);
			bodyText.append(line);
		}

	}

}
