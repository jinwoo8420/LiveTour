package net.hyosun.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import net.hyosun.love.model.CommentVO;
import net.hyosun.love.model.LikeVO;
import net.hyosun.love.model.UserVO;
import net.hyosun.love.persistance.CommentDao;
import net.hyosun.love.persistance.LikeDao;
import net.hyosun.love.persistance.UserDao;
import net.hyosun.love.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private LikeDao likeDao;

	@Autowired
	private UserDao userDao;

	@Override
	public List<CommentVO> selectAll() {
		return commentDao.selectAll();
	}

	@Override
	public CommentVO findById(String id) {
		return commentDao.findById(id);
	}

	@Override
	public int insert(CommentVO vo) {
		UserVO userVO = userDao.findById(vo.getUsername());
		
		vo.setProfile_up_img(userVO.getProfile_up_img());
		
		commentDao.insert(vo);
		
		LikeVO likeVO = LikeVO.builder().c_seq(vo.getC_seq()).content_id(vo.getContent_id()).username(vo.getUsername()).build();
		
		likeDao.insert(likeVO);
		
		return 0;
	}

	@Override
	public int delete(String id) {
		commentDao.delete(id);
		return 0;
	}

	@Bean
	public void create_comment_table() {
		commentDao.create_comment_table();
	}

	@Override
	public List<CommentVO> findByContentId(String contentId) {
		return commentDao.findByContentId(contentId);
	}

}
