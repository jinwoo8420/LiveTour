package net.hyosun.love.service;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import net.hyosun.love.model.WeatherVO;

public interface WeatherService {

	public List<WeatherVO> getWeather(String mapX, String mapY) throws IOException, ParseException;

}