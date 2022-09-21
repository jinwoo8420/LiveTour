package net.hyosun.love.persistance;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import net.hyosun.love.model.ApplyVO;

public interface ApplyDao {
	public List<ApplyVO> selectAll();

	public ApplyVO findById(String id);

	public int insert(ApplyVO vo);

	public int update(ApplyVO vo);

	public int delete(String id);

	public void create_apply_table();

	public int FileUpload(ApplyVO vo, MultipartFile file);
}
