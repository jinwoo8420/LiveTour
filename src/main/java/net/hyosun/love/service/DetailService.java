package net.hyosun.love.service;

import java.io.IOException;

import net.hyosun.love.model.CommonDetailVO;
import net.hyosun.love.model.FoodVO;
import net.hyosun.love.model.LodgmentVO;
import net.hyosun.love.model.TourListVO;

public interface DetailService {
	
	public TourListVO getTourDetail(String contentId) throws IOException;
	public FoodVO getFoodDetail(String contentId) throws IOException;
	public LodgmentVO getLodgmentDetail(String contentId) throws IOException;
	
	public CommonDetailVO getCommonDetail(String contentId) throws IOException;

}
