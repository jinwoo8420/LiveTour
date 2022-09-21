package net.hyosun.love.persistance;

import java.util.List;

import net.hyosun.love.model.ApplyVO;
import net.hyosun.love.model.LikeVO;

public interface LikeDao {

	
	public List<LikeDao> selectAll();

	public ApplyVO findById(String id);

	public int insert(LikeVO vo);

	public int update(LikeVO vo);

	public int delete(String id);

	public void create_tbl_like();

}
