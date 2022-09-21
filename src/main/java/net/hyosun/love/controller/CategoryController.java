package net.hyosun.love.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.hyosun.love.model.LocationVO;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.service.FoodLocationService;
import net.hyosun.love.service.LodgmentLocationService;
import net.hyosun.love.service.TourLocationService;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {

	/*	@Autowired
		private UserService userService;*/

	@RequestMapping(value = "/recommend", method = RequestMethod.GET)
	public String recommend() {

		return "/category/recommend";
	}

	@RequestMapping(value = "/recommend_detail/search_all", method = RequestMethod.GET)
	public String search_all() {

		return "/category/recommend_detail/search_all";
	}

	@RequestMapping(value = "/recommend_detail/search", method = RequestMethod.GET)
	public String search() {

		return "/category/recommend_detail/search";
	}

	@RequestMapping(value = "/region", method = RequestMethod.GET)
	public String region() {

		return "/category/region";
	}

	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map() {

		return "/category/map";
	}

	@RequestMapping(value = "/my", method = RequestMethod.GET)
	public String my(HttpSession session, Model model) {
		UserVO loginUser = (UserVO) session.getAttribute("USER");

		if (loginUser == null) {

			return "redirect:/user/login";
		}

		return "/category/my";
	}

}
