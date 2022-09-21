package net.hyosun.love.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import net.hyosun.love.model.ApplyVO;
import net.hyosun.love.model.QnaVO;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.service.ApplyService;
import net.hyosun.love.service.QnaService;

@Slf4j
@Controller
@RequestMapping(value = "/cs")
public class CsController {

	@Autowired
	private ApplyService applyService;

	@Autowired
	private QnaService qnaService;

	@RequestMapping(value = "/cs-apply", method = RequestMethod.GET)
	public String cs_apply(HttpSession session, Model model, String seq) {

		session.getAttribute("USER");

		ApplyVO applyVO = applyService.findById(seq);

		model.addAttribute("APPLY", applyVO);

		return "/cs/cs-apply";
	}

	@RequestMapping(value = "/cs-apply", method = RequestMethod.POST)
	public String cs_apply(ApplyVO applyvo, MultipartFile file) {
		applyService.FileUpload(applyvo, file);

		return "redirect:/cs/cs-apply-end";
	}

	@RequestMapping(value = "/cs-apply-end", method = RequestMethod.GET)
	public String cs_apply_end() {

		return "/cs/cs-apply-end";
	}

	@RequestMapping(value = "/cs-faq", method = RequestMethod.GET)
	public String cs_faq() {

		return "/cs/cs-faq";
	}

	@RequestMapping(value = "/cs-qna", method = RequestMethod.GET)
	public String cs_qna(HttpSession session) {

		session.getAttribute("USER");
		return "/cs/cs-qna";
	}

	@RequestMapping(value = "/cs-qna", method = RequestMethod.POST)
	public String cs_qna(QnaVO quaVO) {

		qnaService.insert(quaVO);

		return "redirect:/cs/cs-qna-list";
	}

	@RequestMapping(value = "/cs-qna-list", method = RequestMethod.GET)
	public String cs_qna_list(HttpSession session, Model model) {
		UserVO userVO = (UserVO) session.getAttribute("USER");

		List<QnaVO> qnaVO = qnaService.findByUsername(userVO.getUsername());

		model.addAttribute("LIST", qnaVO);

		return "/cs/cs-qna-list";
	}

	@RequestMapping(value = "/cs-qna-view", method = RequestMethod.GET)
	public String cs_qna_view() {

		return "/cs/cs-qna-view";
	}
}
