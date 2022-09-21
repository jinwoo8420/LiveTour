package net.hyosun.love.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.hyosun.love.model.LocationVO;
import net.hyosun.love.service.FoodLocationService;
import net.hyosun.love.service.LodgmentLocationService;
import net.hyosun.love.service.TourLocationService;

@Controller
public class HomeController {
	
	@Autowired
	private TourLocationService tourService;
	@Autowired
	private FoodLocationService foodService;
	@Autowired
	private LodgmentLocationService lodgmentService;

	@RequestMapping(value = "/index/get/{tour_location}/{food_location}/{lodgment_location}")
	public String seoul(@PathVariable("tour_location") String tour, @PathVariable("food_location") String food,
			@PathVariable("lodgment_location") String lodgment, Model model) throws IOException {

		List<LocationVO> tourList = tourService.get_TourLocation(tour);
		List<LocationVO> foodList = foodService.get_FoodLocation(food);
		List<LocationVO> lodgmentList = lodgmentService.get_LodgmentLocation(lodgment);

		model.addAttribute("TOURS", tourList);
		model.addAttribute("FOODS", foodList);
		model.addAttribute("LODGMENTS", lodgmentList);
		return "popular/tour";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String splash() {

		return "splash";
	}

	/*@RequestMapping(value = "/access", method = RequestMethod.GET)
	public String access() {
	
		return "access";
	}
	
	@RequestMapping(value = "/access-ok", method = RequestMethod.GET)
	public String access_ok() {
	
		return "access-ok";
	}
	*/
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String intro() {

		return "intro";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {

		return "index";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error() {

		return "error";
	}

}
