package net.hyosun.love.persistance;

import java.util.List;

import net.hyosun.love.model.QnaVO;

public interface QnaDao {

	public List<QnaVO> selectAll();

	public QnaVO findById(String id);
	
	public List<QnaVO> findByUsername(String username);

	public int delete(String id);

	public int insert(QnaVO vo);

	public int update(QnaVO vo);

	public void create_tbl_qna();

}
