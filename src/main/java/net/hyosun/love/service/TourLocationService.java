package net.hyosun.love.service;

import java.io.IOException;
import java.util.List;

import net.hyosun.love.model.LocationVO;

public interface TourLocationService {

	public List<LocationVO> get_TourLocation(String location) throws IOException;

}
