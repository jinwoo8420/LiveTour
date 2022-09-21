package net.hyosun.love.service.impl;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.hyosun.love.model.EmsVO;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.persistance.UserDao;
import net.hyosun.love.service.FileUpService;
import net.hyosun.love.service.SendMailService;
import net.hyosun.love.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private FileUpService fileUp;

	@Autowired
	protected String upLoadFolder;

	/*
	 * @Autowired private SendMailService xMail;
	 */

	@Override
	public List<UserVO> selectAll() {
		return userDao.selectAll();
	}

	@Override
	public UserVO findById(String id) {
		return userDao.findById(id);
	}

	@Override
	public UserVO findByNickname(String nickname) {
		return userDao.findByNickname(nickname);
	}

	@Override
	public int insert(UserVO vo) {
		userDao.insert(vo);
		return 0;
	}

	@Override
	public int update(UserVO vo) {
		userDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {

		// id 에 해당하는 데이터를 select 하고
		UserVO userVO = userDao.findById(id);

		// 파일이름을 fileDelete() method 에게 보내서
		// 파일을 삭제
		fileUp.fileDelete(userVO.getProfile_up_img());

		// 데이터 삭제
		userDao.delete(id);
		return 0;
	}

	@Bean
	public void create_user_table() {
		userDao.create_user_table();

	}

	@Override
	public UserVO login(UserVO userVO) {
		UserVO loginUser = userDao.findById(userVO.getUsername());

		String encPassword = loginUser.getPassword();
		String planPassword = userVO.getPassword();

		if (encPassword.equals(planPassword) == true) {
			return loginUser;
		}

		return null;
	}

	@Override
	public int join(UserVO userVO) {
		List<UserVO> users = userDao.selectAll();

		if (users == null || users.size() < 1) {
			userVO.setRole("ADMIN");
		} else {
			userVO.setRole("GUEST");
		}
		userDao.insert(userVO);
		return 0;
	}

	// nickname 만 업데이트 하기위해
	@Override
	public int update2(String id, String nickname) { // nickname 수정
		userDao.update2(id, nickname);
		return 0;
	}

	@Override
	public int fileUpLoad(String id, MultipartFile file) {
		UserVO userVO = userDao.findById(id);

		String filename = userVO.getProfile_img();

		if (filename != null) {

			UserVO updateUser = userDao.findById(id);

			String fileName = updateUser.getProfile_img();

			if (!fileName.equals(file.getOriginalFilename())) {

				fileUp.fileDelete(updateUser.getProfile_up_img());
			}

			// 파일을 업로드 하고
			// 업로드된 파일 이름 가져오기
			String upLoadFileName = fileUp.fileUp(file);

			userVO.setProfile_img(file.getOriginalFilename());
			userVO.setProfile_up_img(upLoadFileName);
			return userDao.update(userVO);

		}

		userVO.setProfile_img(file.getOriginalFilename());
		userVO.setProfile_up_img(fileUp.fileUp(file));

		return userDao.update(userVO);
	}

	@Override
	public int fileDelete(String id, String filename) {
		if (filename == null) {
			return 0;
		}
		File deleteFile = new File(upLoadFolder, filename); // 업로드 폴더와 파일 이름을 묶어서 파일 객체 생성

		if (deleteFile.exists()) { // 파일이 존재 할 때
			deleteFile.delete(); // 파일 삭제
		}

		return userDao.fileDelete(id, filename);
	}

	@Override
	// 배경 업로드
	public int bg_UpLoad(String id, MultipartFile file) {

		// userVO 에 현재 사용자 정보를 저장
		UserVO userVO = userDao.findById(id);

		// filename 에 현재 사용자에 배경파일이름 저장
		String filename = userVO.getProfile_bg();

		// 파일이름이 DB에 존재할때
		if (filename != null) {
			UserVO updateUser = userDao.findById(id);

			// filename 에 이미 DB에 저장된 UUID가 적용되지않은 파일이름을 저장
			String fileName = updateUser.getProfile_bg();

			// 그파일이 내가 새로저장할 파일이름과 비교해서 다르면 원래 업로드폴더에 업로드된
			// 이미지 파일 삭제하기
			if (!fileName.equals(file.getOriginalFilename())) {
				fileUp.fileDelete(updateUser.getProfile_up_bg());
			}

			// 파일을 업로드 하고
			// 업로드된 파일 이름 가져오기
			String upLoadFileName = fileUp.fileUp(file);

			// DB에 새롭게 고른 이미지를 업데이트
			userVO.setProfile_bg(file.getOriginalFilename());
			userVO.setProfile_up_bg(upLoadFileName);

			return userDao.update(userVO);

		}

		// 파일 이름이 DB에 존재 하지 않을때 첫번쨰 업로드 바로저장
		userVO.setProfile_bg(file.getOriginalFilename());
		userVO.setProfile_up_bg(fileUp.fileUp(file));

		return userDao.update(userVO);

	}

	@Override
	public int bg_Delete(String id, String filename) {
		if (filename == null) {
			return 0;
		}

		File deleteFile = new File(upLoadFolder, filename); // 업로드 폴더와 파일 이름을 묶어서 파일 객체 생성

		if (deleteFile.exists()) { // 파일이 존재 할 때
			deleteFile.delete(); // 파일 삭제
		}

		return userDao.bg_Delete(id, filename);
	}

	@Override
	public int pwUpdate(String id, String password) {
		userDao.pwUpdate(id, password);

		return 0;
	}

	@Override
	public int email(UserVO userVO) {
		/*
		 * String email = userVO.getUsername();
		 * 
		 * EmsVO emsVO = EmsVO.builder().e_to_email(email).build();
		 * 
		 * xMail.sendMail(emsVO, userVO);
		 */
		return 0;
	}

}
