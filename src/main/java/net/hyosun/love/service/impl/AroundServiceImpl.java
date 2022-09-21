package net.hyosun.love.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import lombok.extern.slf4j.Slf4j;
import net.hyosun.love.config.QualifierConfig;
import net.hyosun.love.model.AroundVO;
import net.hyosun.love.service.AroundService;

@Slf4j
@Service
public class AroundServiceImpl implements AroundService{

	
	

	@Override
	public List<AroundVO>  getAround(String mapX, String mapY) throws IOException{
		//공공데이터 키값하고 원하는 설정 연결하기
		String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList"; /*URL*/
		try {
			url += ("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + QualifierConfig.KEY_1);
			url += ("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
			url += ("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
			url +=  ("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
			url += ("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("mapX","UTF-8") + "=" + URLEncoder.encode(mapX, "UTF-8")); /*좌표*/
			url += ("&" + URLEncoder.encode("mapY","UTF-8") + "=" + URLEncoder.encode(mapY, "UTF-8")); /*좌표*/
			url += ("&" + URLEncoder.encode("radius","UTF-8") + "=" + URLEncoder.encode("3000", "UTF-8")); /*좌표*/
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		//파일 읽어들이기
        URL realUrl = new URL(url);
        HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        log.debug("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        
        //파일 읽어서 한줄씩 String에 저장하기
        String retString = "";
        String line;
        while ((line = rd.readLine()) != null) {
           retString += line;
        }
        rd.close();
        conn.disconnect();
        //System.out.println(retString.toString());
        
        
        //xml json으로 형변환
        JSONObject json = XML.toJSONObject(retString);
        String jsonStr = json.toString(4);
        
       
        // JSONObject형식으로 지정
        JSONObject jObject = new JSONObject(jsonStr);
        
        //response 안으로
        JSONObject response = jObject.getJSONObject("response");
        
        // body 안으로
        JSONObject body = response.getJSONObject("body");
        
        //items 안으로
        JSONObject items = body.getJSONObject("items");
        
        //item은 배열로 생성
        JSONArray item = items.getJSONArray("item");
      
        //json 배열을 List형으로 변형해서 VO에 저장
        Gson gson = new Gson();
        List<AroundVO> list = gson.fromJson(item.toString(), new TypeToken<List<AroundVO>>(){}.getType());
        
        //값 지정해서 출력 성공!
        
        
        return list;
	}
	//TODO 서울
	@Override
	public List<AroundVO>  getDetailAround(String mapX, String mapY, String contentTypeId) throws IOException{
		//공공데이터 키값하고 원하는 설정 연결하기
		String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList"; /*URL*/
		try {
			url += ("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + QualifierConfig.KEY_1);
			url += ("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
			url += ("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
			url +=  ("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
			url += ("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("S", "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode(contentTypeId, "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("mapX","UTF-8") + "=" + URLEncoder.encode(mapX, "UTF-8")); /*좌표*/
			url += ("&" + URLEncoder.encode("mapY","UTF-8") + "=" + URLEncoder.encode(mapY, "UTF-8")); /*좌표*/
			url += ("&" + URLEncoder.encode("radius","UTF-8") + "=" + URLEncoder.encode("3000", "UTF-8")); /*좌표*/
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		//파일 읽어들이기
		URL realUrl = new URL(url);
		HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		log.debug("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		
		//파일 읽어서 한줄씩 String에 저장하기
		String retString = "";
		String line;
		while ((line = rd.readLine()) != null) {
			retString += line;
		}
		rd.close();
		conn.disconnect();
		//System.out.println(retString.toString());
		
		
		//xml json으로 형변환
		JSONObject json = XML.toJSONObject(retString);
		String jsonStr = json.toString(4);
		
		
		// JSONObject형식으로 지정
		JSONObject jObject = new JSONObject(jsonStr);
		
		//response 안으로
		JSONObject response = jObject.getJSONObject("response");
		
		// body 안으로
		JSONObject body = response.getJSONObject("body");
		
		//items 안으로
		JSONObject items = body.getJSONObject("items");
		
		//item은 배열로 생성
		JSONArray item = items.getJSONArray("item");
		
		//json 배열을 List형으로 변형해서 VO에 저장
		Gson gson = new Gson();
		List<AroundVO> list = gson.fromJson(item.toString(), new TypeToken<List<AroundVO>>(){}.getType());
		
		//값 지정해서 출력 성공!
		
		
		return list;
	}

}
