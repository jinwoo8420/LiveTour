package net.hyosun.love.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import net.hyosun.love.model.AroundVO;
import net.hyosun.love.model.CommentVO;
import net.hyosun.love.model.CommonDetailVO;
import net.hyosun.love.model.FoodVO;
import net.hyosun.love.model.LikeVO;
import net.hyosun.love.model.LodgmentVO;
import net.hyosun.love.model.TourListVO;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.model.WeatherVO;
import net.hyosun.love.service.AroundService;
import net.hyosun.love.service.CommentService;
import net.hyosun.love.service.DetailService;
import net.hyosun.love.service.LikeService;
import net.hyosun.love.service.WeatherService;

@Slf4j
@Controller
@RequestMapping(value = "/detail")
public class DetailController {
	@Autowired
	public DetailService detailService;

	@Autowired
	private AroundService aroundService;

	@Autowired
	private WeatherService weatherService;

	@Autowired
	private CommentService commentService;

	@Autowired
	private LikeService likeService;

	@RequestMapping(value = "/detail/{contentid}", method = RequestMethod.GET)
	public String tour_detail(@PathVariable("contentid") String contentid, Model model, HttpSession session)
			throws IOException, ParseException {

		UserVO loginUser = (UserVO) session.getAttribute("USER");

		List<CommentVO> comment = commentService.findByContentId(contentid);

		for (CommentVO vo : comment) {
			String time = vo.getTime();
			SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date reg_time = timeFormat.parse(time);
			vo.setReg_time(calculateTime(reg_time));
		}

		model.addAttribute("COMMENT", comment);

		TourListVO tourDetailVO = detailService.getTourDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.getMapx(), CommonDetailVO.getMapy(),
				CommonDetailVO.contenttypeid);
		List<AroundVO> AroundFoodList = aroundService.getDetailAround(CommonDetailVO.getMapx(),
				CommonDetailVO.getMapy(), "39");
		List<AroundVO> AroundLodgeList = aroundService.getDetailAround(CommonDetailVO.getMapx(),
				CommonDetailVO.getMapy(), "32");

		List<WeatherVO> weather = weatherService.getWeather(CommonDetailVO.getMapy().split("[.]")[0],
				CommonDetailVO.getMapx().split("[.]")[0]);

		model.addAttribute("WEATHER", weather);
		model.addAttribute("TOURDETAIL", tourDetailVO);
		model.addAttribute("COMMONDETAIL", CommonDetailVO);
		model.addAttribute("AROUND", AroundList);
		model.addAttribute("AROUNDFOOD", AroundFoodList);
		model.addAttribute("AROUNDLODGE", AroundLodgeList);
		return "/detail/detail";
	}

	@RequestMapping(value = "/detail/{contentid}", method = RequestMethod.POST)
	public String tour_detail(@PathVariable("contentid") String contentid,
			@ModelAttribute("comment") CommentVO commentVO, Model model) {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		commentVO.setTime(timeFormat.format(date));
		commentService.insert(commentVO);

		return "redirect:/detail/detail/{contentid}";
	}

	@RequestMapping(value = "detail/{contentid}/{c_seq}/comdelete")
	public String CommentDelete(@PathVariable("contentid") String contentid, @PathVariable("c_seq") String c_seq) {
		commentService.delete(c_seq);

		log.debug("TEST {}", c_seq);

		return "redirect:/detail/detail/{contentid}";
	}

//	@RequestMapping(value = "/detail/{contentid}/likeinsert",method=RequestMethod.GET)
//	public String likeinsert(@PathVariable("contentid") String contentid) {
//		return null;
//	}

	@RequestMapping(value = "/detail/{contentid}/likeinsert", method = RequestMethod.POST)
	public String likeinsert(@PathVariable("contentid") String contentid, LikeVO likeVO) {
		likeService.insert(likeVO);

		return "redirect:/detail/detail/{contentid}";
	}

	private static class TIME_MAXIMUM {
		public static final int SEC = 60;
		public static final int MIN = 60;
		public static final int HOUR = 24;
		public static final int DAY = 30;
		public static final int MONTH = 12;
	}

	public static String calculateTime(Date date) {

		long curTime = System.currentTimeMillis();
		long regTime = date.getTime();
		long diffTime = (curTime - regTime) / 1000;

		String msg = null;

		if (diffTime < TIME_MAXIMUM.SEC) {
			// sec
			msg = diffTime + "초 전";
		} else if ((diffTime /= TIME_MAXIMUM.SEC) < TIME_MAXIMUM.MIN) {
			// min
			msg = diffTime + "분 전";
		} else if ((diffTime /= TIME_MAXIMUM.MIN) < TIME_MAXIMUM.HOUR) {
			// hour
			msg = (diffTime) + "시간 전";
		} else if ((diffTime /= TIME_MAXIMUM.HOUR) < TIME_MAXIMUM.DAY) {
			// day
			msg = (diffTime) + "일 전";
		} else if ((diffTime /= TIME_MAXIMUM.DAY) < TIME_MAXIMUM.MONTH) {
			// day
			msg = (diffTime) + "달 전";
		} else {
			msg = (diffTime) + "년 전";
		}
		return msg;
	}

	@ModelAttribute("comment")
	private CommentVO commentVO() {
		Date date = new Date(System.currentTimeMillis());

		CommentVO comment = CommentVO.builder().time(calculateTime(date)).build();

		return comment;
	}

	@RequestMapping(value = "/detail-restaurant/{contentid}")
	public String detail_restaurant(@PathVariable("contentid") String contentid, Model model)
			throws IOException, ParseException {

		FoodVO foodDetailVO = detailService.getFoodDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.getMapx(), CommonDetailVO.getMapy(),
				CommonDetailVO.contenttypeid);
		List<AroundVO> AroundTourList = aroundService.getDetailAround(CommonDetailVO.getMapx(),
				CommonDetailVO.getMapy(), "12");
		List<AroundVO> AroundLodgeList = aroundService.getDetailAround(CommonDetailVO.getMapx(),
				CommonDetailVO.getMapy(), "32");

		List<WeatherVO> weather = weatherService.getWeather(CommonDetailVO.getMapy().split("[.]")[0],
				CommonDetailVO.getMapx().split("[.]")[0]);

		model.addAttribute("WEATHER", weather);
		model.addAttribute("FOODDETAIL", foodDetailVO);
		model.addAttribute("COMMONDETAIL", CommonDetailVO);
		model.addAttribute("AROUND", AroundList);
		model.addAttribute("AROUNDTOUR", AroundTourList);
		model.addAttribute("AROUNDLODGE", AroundLodgeList);
		return "/detail/detail-restaurant";
	}

	@RequestMapping(value = "/detail-lodge/{contentid}")
	public String detail_lodge(@PathVariable("contentid") String contentid, Model model)
			throws IOException, ParseException {

		LodgmentVO lodgeDetailVO = detailService.getLodgmentDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.getMapx(), CommonDetailVO.getMapy(),
				CommonDetailVO.contenttypeid);
		List<AroundVO> AroundTourList = aroundService.getDetailAround(CommonDetailVO.getMapx(),
				CommonDetailVO.getMapy(), "12");
		List<AroundVO> AroundFoodList = aroundService.getDetailAround(CommonDetailVO.getMapx(),
				CommonDetailVO.getMapy(), "39");

		List<WeatherVO> weather = weatherService.getWeather(CommonDetailVO.getMapy().split("[.]")[0],
				CommonDetailVO.getMapx().split("[.]")[0]);

		model.addAttribute("WEATHER", weather);
		model.addAttribute("LODGEDETAIL", lodgeDetailVO);
		model.addAttribute("COMMONDETAIL", CommonDetailVO);
		model.addAttribute("AROUND", AroundList);
		model.addAttribute("AROUNDTOUR", AroundTourList);
		model.addAttribute("AROUNDFOOD", AroundFoodList);
		return "/detail/detail-lodge";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {

		return "/detail/detail";

	}

	@RequestMapping(value = "/detail-restaurant", method = RequestMethod.GET)
	public String detail_restautant() {

		return "/detail/detail-restaurant";

	}

	@RequestMapping(value = "/detail-lodge", method = RequestMethod.GET)
	public String detail_lodge() {

		return "/detail/detail-lodge";

	}
}