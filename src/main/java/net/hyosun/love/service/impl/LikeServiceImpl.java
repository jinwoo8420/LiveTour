package net.hyosun.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import net.hyosun.love.model.LikeVO;
import net.hyosun.love.persistance.LikeDao;
import net.hyosun.love.service.LikeService;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	private LikeDao likeDao;

	@Override
	public List<LikeVO> selectAll() {
		return likeDao.selectAll();
	}

	@Override
	public LikeVO findById(String id) {
		return likeDao.findById(id);
	}

	@Override
	public List<LikeVO> findByC_seq(String c_seq) {
		return likeDao.findByC_seq(c_seq);
	}

	@Override
	public int insert(LikeVO vo) {
		likeDao.insert(vo);
		return 0;
	}

	@Override
	public int update(LikeVO vo) {
		return 0;
	}

	@Override
	public int delete(String id) {
		likeDao.delete(id);
		return 0;
	}

	@Bean
	public void create_tbl_like() {
		likeDao.create_tbl_like();
	}

}