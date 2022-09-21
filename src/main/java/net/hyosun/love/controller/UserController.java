package net.hyosun.love.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.service.UserService;

@Slf4j
@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/findpw_auth", method = RequestMethod.GET)
	public String findpw_auth() {

		return "/user/findpw_auth";
	}

	@RequestMapping(value = "/findpw_reset", method = RequestMethod.GET)
	public String findpw_reset() {

		return "/user/findpw_reset";
	}

	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public String findpw() {

		return "/user/findpw";
	}

	// 로그인 페이지 띄우기
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error) {

		model.addAttribute("error", error);

		return "/user/login";
	}

	// 로그인 하기
	@RequestMapping(value = "/login", method = RequestMethod.POST)

	//
	public String login(UserVO userVO, HttpSession session, Model model) {

		// userVO에 username만 추출하여 findById 메소드를 호출하여 그 결과값을 loginUser에 담기
		UserVO loginUser = userService.findById(userVO.getUsername());

		// ( loginUser == null ) => Id값 존재 X => DB에 값 없음
		if (loginUser == null) {
			model.addAttribute("error", "USERNAME_FAIL");
			return "redirect:/user/login";
		}

		//
		if (loginUser.getPassword().equals(userVO.getPassword()) == false) {
			model.addAttribute("error", "PASSWORD_FAIL");
			return "redirect:/user/login";
		}

		session.setAttribute("USER", loginUser);

		return "redirect:/index";

	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("USER");

		return "redirect:/index";
	}

	@RequestMapping(value = "/signup_end", method = RequestMethod.GET)
	public String signup_end(HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("USER");

		return "/user/signup_end";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {

		return "/user/signup";
	}

	@RequestMapping(value = "/signup2", method = RequestMethod.GET)
	public String signup2() {

		return "/user/signup2";
	}

	@RequestMapping(value = "/signup2", method = RequestMethod.POST)
	public String signup2(UserVO uservo, HttpSession session) {
		userService.insert(uservo);

		UserVO loginUser = userService.findById(uservo.getUsername());

		session.setAttribute("USER", loginUser);

		return "redirect:/user/signup3";
	}

	@RequestMapping(value = "/signup3", method = RequestMethod.GET)
	public String signup3(HttpSession session, @ModelAttribute("userVO") UserVO userVO) {
		UserVO user = (UserVO) session.getAttribute("USER");

		return "/user/signup3";
	}

	@RequestMapping(value = "/email_join", method = RequestMethod.GET)
	public String email_join(HttpSession session, @ModelAttribute("userVO") UserVO userVO, Model model) {
		UserVO user = (UserVO) session.getAttribute("USER");

		model.addAttribute("USER", user);

		if (user == null) {
			return "redirect:/error";
		}

		return "/user/email_join";
	}

	@RequestMapping(value = "/email_join", method = RequestMethod.POST)
	public String email_join(@ModelAttribute("userVO") UserVO userVO) {
		userService.email(userVO);

		return "/user/email_join";
	}

	@RequestMapping(value = "/signup2_check", method = RequestMethod.GET)
	public String signup2_check() {

		return "/user/signup2_check";
	}

	@RequestMapping(value = "/signup2_confirm", method = RequestMethod.GET)
	public String signup2_confirm() {

		return "/user/signup2_confirm";
	}

	@RequestMapping(value = "/profile-user", method = RequestMethod.GET)
	public String profile_user() {

		return "/user/profile-user";
	}

	/*	@ResponseBody
		@RequestMapping(value = "/nicknamecheck/{nickname}", method = RequestMethod.GET)
		public String nicknamecheck(@PathVariable("nickname") String nickname) {
			UserVO userVO = userService.findByNickname(nickname);
	
			if (userVO == null) {
				return "OK";
			}
	
			return "FAIL";
		}*/

	@ResponseBody
	@RequestMapping(value = "/usernamecheck", method = RequestMethod.GET)
	public String usernamecheck(String username) {
		UserVO userVO = userService.findById(username);

		if (userVO == null) {
			return "OK";
		}

		return "FAIL";
	}

//	@RequestMapping(value = "/email_join")
//	public String email_join(@ModelAttribute("userVO") UserVO userVO) {
//		
//		return "/user/email_join";
//	}

}
