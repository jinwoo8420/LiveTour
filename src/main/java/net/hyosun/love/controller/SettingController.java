package net.hyosun.love.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/setting")
public class SettingController {

	@RequestMapping(value = "/memout", method = RequestMethod.GET)
	public String memout() {

		return "/setting/memout";
	}

	@RequestMapping(value = "/policy", method = RequestMethod.GET)
	public String policy() {

		return "/setting/policy";
	}

	@RequestMapping(value = "/policy-agree", method = RequestMethod.GET)
	public String policy_agree() {

		return "/setting/policy-agree";
	}

	@RequestMapping(value = "/policy-privacy", method = RequestMethod.GET)
	public String policy_privacy() {

		return "/setting/policy-privacy";
	}

	@RequestMapping(value = "/policy-terms", method = RequestMethod.GET)
	public String policy_terms() {

		return "/setting/policy-terms";
	}

	@RequestMapping(value = "/set", method = RequestMethod.GET)
	public String set() {

		return "/setting/set";
	}

	@RequestMapping(value = "/set-alarm", method = RequestMethod.GET)
	public String set_alarm() {

		return "/setting/set-alarm";
	}

	@RequestMapping(value = "/set-vod", method = RequestMethod.GET)
	public String set_vod() {

		return "/setting/set-vod";
	}
}
