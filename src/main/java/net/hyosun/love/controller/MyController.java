package net.hyosun.love.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.service.FileUpService;
import net.hyosun.love.service.UserService;

@Slf4j
@Controller
@RequestMapping(value = "/my")
public class MyController {

	@Autowired
	private UserService userService;

	@Autowired
	private FileUpService fileService;

	@RequestMapping(value = "my-comment")
	public String my_comment() {

		return "/my/my-comment";

	}

	@RequestMapping(value = "my-nickname", method = RequestMethod.GET)

	// nickname 변경페이지 띄우기
	public String my_nickname(HttpSession session) {

		// 현재 로그인한 정보를 세션에서 불러와서 user 변수에 담기
		UserVO user = (UserVO) session.getAttribute("USER");

		return "/my/my-nickname";

	}

	// nickname 변경하기
	@RequestMapping(value = "my-nickname", method = RequestMethod.POST)

	// 현재 로그인한 정보를 가져와서 세션에 새롭게 업데이트하기위해 session 필요
	// String nickname을 쓰는 이유는 사용자가 form tag에 입력한 nickname을 받아오기위해
	public String my_nickname(HttpSession session, String nickname) {

		UserVO user = (UserVO) session.getAttribute("USER");
		log.debug("nickname {}", nickname);

		// GetUsername을 가져와서 그 Username 에 따른 nickname 수정
		userService.update2(user.getUsername(), nickname);

		UserVO uservo = userService.findById(user.getUsername());
		log.debug("VO {}", uservo);

		// 수정된 nickname을 "USER" session에 세팅
		session.setAttribute("USER", uservo);

		return "redirect:/my/my-profile-edit";
	}
	
	@ResponseBody
	@RequestMapping(value = "/nicknamecheck", method = RequestMethod.GET)
	public String nicknamecheck(String nickname) {
		UserVO userVO = userService.findByNickname(nickname);

		if (userVO == null) {
			return "OK";
		}

		return "FAIL";
	}
	

	// my/my-password 비밀번호 재설정페이지 띄우기
	@RequestMapping(value = "my-password", method = RequestMethod.GET)
	public String my_password(HttpSession session) {
		// UserVO user = (UserVO) session.getAttribute("USER");
		return "/my/my-password";

	}

	// 비밀번호 재설정하기
	@RequestMapping(value = "my-password", method = RequestMethod.POST)

	// 비밀번호 수정 처리해주기
	public String my_password(HttpSession session, String password) {
		UserVO user = (UserVO) session.getAttribute("USER");

		// DB에 변경된 password update
		userService.pwUpdate(user.getUsername(), password);
		
		UserVO uservo = userService.findById(user.getUsername());

		// 변경된 password setting 하기
		session.setAttribute("USER", uservo);

		// 회원정보 페이지로 redirect
		return "redirect:/my/my-profile-edit";

	}

	// 현재 비밀번호 유효성 검사
	// old_pw :원래 비번
	@ResponseBody
	@RequestMapping(value = "/passwordcheck", method = RequestMethod.GET)
	public String usernamecheck(String old_pw, HttpSession session) {
		// 현재 session 로그인정보 가져오기
		UserVO user = (UserVO) session.getAttribute("USER");

		log.debug("패스워드{}", user.getPassword());
		log.debug("old 패스워드{}", old_pw);

		// 사용자가 form tag에 적은 현재 비밀번호가 session에 담긴 비밀번호와 일치 할 때
		if (user.getPassword().equals(old_pw) == true) {

			// js에 있는 코드
			return "OK";
		}

		return "FAIL";
	}

	// 회원 정보 페이지
	@RequestMapping(value = "my-profile-edit", method = RequestMethod.GET)
	public String my_profile_edit(@ModelAttribute("userVO") UserVO userVO, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("USER");

		return "/my/my-profile-edit";

	}

	@RequestMapping(value = "my-profile-edit", method = RequestMethod.POST)
	public String my_profile_edit(@ModelAttribute("userVO") UserVO userVO, Model model, MultipartFile file,
			HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("USER");

		// DB에 프로필 사진을 update 시킨다.
		userService.fileUpLoad(user.getUsername(), file);

		// update된 DB를 Id값으로 찾아와 profile에 저장
		UserVO profile = userService.findById(user.getUsername());

		log.debug("PROFILE {}", user.toString());

		// session에 VO타입 profile을 담는다
		session.setAttribute("USER", profile);

		return "redirect:/my/my-profile-edit";

	}
	
	@RequestMapping(value = "/bg_update", method = RequestMethod.POST)
	public String bg_edit(@ModelAttribute("userVO") UserVO userVO, Model model, MultipartFile file,
			HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("USER");

		// DB에 배경 사진을 update 시킨다.
		userService.bg_UpLoad(user.getUsername(), file);

		// update된 DB를 Id값으로 찾아와 profile에 저장
		UserVO profile = userService.findById(user.getUsername());

		log.debug("PROFILE {}", user.toString());

		// session에 VO타입 profile을 담는다
		session.setAttribute("USER", profile);

		return "redirect:/my/my-profile-edit";
	}

	@RequestMapping(value = "/my-profile_img_delete", method = RequestMethod.GET)
	public String delete(HttpSession session) {
		UserVO userVO = (UserVO) session.getAttribute("USER");

		userService.fileDelete(userVO.getUsername(),userVO.getProfile_up_img());

		UserVO profile = userService.findById(userVO.getUsername());

		log.debug("PROFILE VO {}", profile);

		session.setAttribute("USER", profile);

		return "redirect:/my/my-profile-edit";
	}
	
	
	@RequestMapping(value = "/bg_delete", method = RequestMethod.GET)
	public String bg_delete(HttpSession session) {
		UserVO userVO = (UserVO) session.getAttribute("USER");

		userService.bg_Delete(userVO.getUsername(),userVO.getProfile_bg());

		UserVO profile = userService.findById(userVO.getUsername());

		log.debug("PROFILE VO {}", profile);

		session.setAttribute("USER", profile);

		return "redirect:/my/my-profile-edit";
	}
	
	@RequestMapping(value = "my-zzim")
	public String my_zzim() {

		return "/my/my-zzim";

	}

	@RequestMapping(value = "notice")
	public String notice() {

		return "/my/notice";
	}

	@RequestMapping(value = "notice-view")
	public String notice_view() {

		return "/my/notice-view";
	}

}
