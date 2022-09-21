package net.hyosun.love.persistance;

import java.util.List;

import net.hyosun.love.model.CommentVO;

public interface CommentDao {
	public List<CommentVO> selectAll();

	public List<CommentVO> findByContentId(String contentId);

	public CommentVO findById(String id);

	public int insert(CommentVO vo);

	public int delete(String id);

	public void create_comment_table();
}
