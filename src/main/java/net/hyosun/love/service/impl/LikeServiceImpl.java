package net.hyosun.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.hyosun.love.model.LikeVO;
import net.hyosun.love.persistance.LikeDao;
import net.hyosun.love.service.LikeService;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	private LikeService likeService;

	@Override
	public List<LikeDao> selectAll() {

		// TODO Auto-generated method stub
		return likeService.selectAll();
	}

	@Override
	public LikeVO findById(String id) {
		// TODO Auto-generated method stub
		return likeService.findById(id);
	}

	@Override
	public List<LikeVO> findByCommentId(long commentId) {
		return likeService.findByCommentId(commentId);
	}

	@Override
	public int insert(LikeVO vo) {
		likeService.insert(vo);
		return 0;
	}

	@Override
	public int update(LikeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		likeService.delete(id);
		return 0;
	}

	@Override
	public void create_tbl_like() {

		likeService.create_tbl_like();
	}

}