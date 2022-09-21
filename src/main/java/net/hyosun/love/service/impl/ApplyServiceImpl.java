package net.hyosun.love.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.hyosun.love.model.ApplyVO;
import net.hyosun.love.persistance.ApplyDao;
import net.hyosun.love.service.ApplyService;
import net.hyosun.love.service.FileUpService;

@Service
public class ApplyServiceImpl implements ApplyService{
	
	@Autowired
	private ApplyDao applyDao;
	
	@Autowired
	private FileUpService fileUp;

	@Override
	public List<ApplyVO> selectAll() {
		return applyDao.selectAll();
	}

	@Override
	public ApplyVO findById(String id) {
		// TODO Auto-generated method stub
		return applyDao.findById(id);
	}

	@Override
	public int insert(ApplyVO vo) {
		applyDao.insert(vo);
		return 0;
	}

	@Override
	public int update(ApplyVO vo) {
		applyDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		applyDao.delete(id);
		return 0;
	}

	@Bean
	public void create_apply_table() {
		applyDao.create_apply_table();
	}

	@Override
	public int FileUpload(ApplyVO vo, MultipartFile file) {

		vo.setBiznum(fileUp.fileup_NOUUID(file));
		return applyDao.insert(vo);
	}

}
