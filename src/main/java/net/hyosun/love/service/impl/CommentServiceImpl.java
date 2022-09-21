package net.hyosun.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import net.hyosun.love.model.CommentVO;
import net.hyosun.love.persistance.CommentDao;
import net.hyosun.love.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDao commentDao;
	
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
		commentDao.insert(vo);
		return 0;
	}

	@Override
	public int update(CommentVO vo) {
		commentDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		commentDao.delete(id);
		return 0;
	}

	@Bean
	public void create_comment_table() {
		// TODO Auto-generated method stub
		commentDao.create_comment_table();
		
	}

	@Override
	public List<CommentVO> findByContentId(String contentId) {
		// TODO Auto-generated method stub
		return commentDao.findByContentId(contentId);
	}

}
