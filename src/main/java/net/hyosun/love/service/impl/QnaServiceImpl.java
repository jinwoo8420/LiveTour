package net.hyosun.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import net.hyosun.love.model.QnaVO;
import net.hyosun.love.persistance.QnaDao;
import net.hyosun.love.service.QnaService;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDao qnaDao;

	@Override
	public List<QnaVO> selectAll() {
		return qnaDao.selectAll();
	}

	@Override
	public QnaVO findById(String id) {
		return qnaDao.findById(id);
	}

	@Override
	public List<QnaVO> findByUsername(String username) {
		return qnaDao.findByUsername(username);
	}

	@Override
	public int delete(String id) {
		return 0;
	}

	@Override
	public int insert(QnaVO vo) {
		return qnaDao.insert(vo);
	}

	@Override
	public int update(QnaVO vo) {
		return 0;
	}

	@Bean
	public void create_tbl_qna() {
		qnaDao.create_tbl_qna();
	}

}
