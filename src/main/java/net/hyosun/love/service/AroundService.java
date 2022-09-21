package net.hyosun.love.service;

import java.io.IOException;
import java.util.List;

import net.hyosun.love.model.AroundVO;

public interface AroundService {
	
	public List<AroundVO> getAround(String mapX, String mapY) throws IOException;
	public List<AroundVO> getDetailAround(String mapX, String mapY, String contentTypeId) throws IOException;

 }
