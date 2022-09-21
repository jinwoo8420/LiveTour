//package net.hyosun.love.service.impl;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.stereotype.Service;
//
//import net.hyosun.love.model.ApplyVO;
//import net.hyosun.love.model.LikeVO;
//import net.hyosun.love.persistance.LikeDao;
//import net.hyosun.love.service.LikeService;
//
//
//@Service
//public class LikeServiceImpl implements LikeService{
//	
//	
//	@Autowired
//	private LikeDao likeDao;
//	
//
//	@Override
//	public List<LikeDao> selectAll() {
//	return	likeDao.selectAll();
//		
//	}
//
//	@Override
//	public ApplyVO findById(String id) {
//		
//		return likeDao.findById(id);
//	}
//
//	@Override
//	public int insert(LikeVO vo) {
//		likeDao.insert(vo);
//		return 0;
//	}
//
//	@Override
//	public int update(LikeVO vo) {
//		likeDao.update(vo);
//		return 0;
//	}
//
//	@Override
//	public int delete(String id) {
//		likeDao.delete(id);
//		return 0;
//	}
//
//	@Bean
//	public void create_tbl_like() {
//
//		likeDao.create_tbl_like();
//	}
//
//}
