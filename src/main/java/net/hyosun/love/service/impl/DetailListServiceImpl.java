package net.hyosun.love.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import net.hyosun.love.config.QualifierConfig;
import net.hyosun.love.model.CommonDetailVO;
import net.hyosun.love.model.FoodVO;
import net.hyosun.love.model.LodgmentVO;
import net.hyosun.love.model.TourListVO;
import net.hyosun.love.service.DetailService;

@Service
public class DetailListServiceImpl implements DetailService{

	
	//TODO  관광지
	@Override
	public TourListVO getTourDetail(String contentId) throws IOException {
		//공공데이터 키값하고 원하는 설정 연결하기
		String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro"; /*URL*/
		try {
			url += ("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+QualifierConfig.KEY_1);					
			url += ("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
			url += ("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
			url +=  ("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
			url += ("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("contentId","UTF-8") + "=" + URLEncoder.encode(contentId, "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("12", "UTF-8")); /*서비스명=어플명*/
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		//파일 읽어들이기
        URL realUrl = new URL(url);
        HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
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
        
        //item 선택
        JSONObject item = items.getJSONObject("item");
      
        // VO에 저장
        Gson gson = new Gson();
        TourListVO vo = gson.fromJson(item.toString(), TourListVO.class);
        
        //값 지정해서 콘텐츠 아이디 뽑아버리기
        
        return vo;
	}
	
	//TODO 음식
	@Override
	public FoodVO getFoodDetail(String contentId) throws IOException {
		//공공데이터 키값하고 원하는 설정 연결하기
				String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro"; /*URL*/
				try {
					url += ("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + QualifierConfig.KEY_1);
					url += ("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
					url += ("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
					url +=  ("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
					url += ("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("contentId","UTF-8") + "=" + URLEncoder.encode(contentId, "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("39", "UTF-8")); /*서비스명=어플명*/
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				
				
				//파일 읽어들이기
		        URL realUrl = new URL(url);
		        HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
		        conn.setRequestMethod("GET");
		        conn.setRequestProperty("Content-type", "application/json");
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
		        
		        //item 선택
		        JSONObject item = items.getJSONObject("item");
		      
		        // VO에 저장
		        Gson gson = new Gson();
		        FoodVO vo = gson.fromJson(item.toString(), FoodVO.class);
		        
		        //값 지정해서 콘텐츠 아이디 뽑아버리기
		        return vo;
	}

	@Override
	public LodgmentVO getLodgmentDetail(String contentId) throws IOException {
		//공공데이터 키값하고 원하는 설정 연결하기
				String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro"; /*URL*/
				try {
					url += ("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+QualifierConfig.KEY_1);
					url += ("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
					url += ("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
					url +=  ("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
					url += ("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("contentId","UTF-8") + "=" + URLEncoder.encode(contentId, "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("32", "UTF-8")); /*서비스명=어플명*/
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				
				
				//파일 읽어들이기
		        URL realUrl = new URL(url);
		        HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
		        conn.setRequestMethod("GET");
		        conn.setRequestProperty("Content-type", "application/json");
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
		        
		        //item 선택
		        JSONObject item = items.getJSONObject("item");
		      
		        // VO에 저장
		        Gson gson = new Gson();
		        LodgmentVO vo = gson.fromJson(item.toString(), LodgmentVO.class);
		        
		        //값 지정해서 콘텐츠 아이디 뽑아버리기
		        
		        return vo;
	}
	
	
	//TODO 공통정보 조회
	@Override
	public CommonDetailVO getCommonDetail(String contentid) throws IOException {
		//공공데이터 키값하고 원하는 설정 연결하기
				String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon"; /*URL*/
				try {
					url += ("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+QualifierConfig.KEY_1);
					url += ("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
					url += ("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
					url +=  ("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
					url += ("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("contentId","UTF-8") + "=" + URLEncoder.encode(contentid, "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("defaultYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("firstImageYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("addrinfoYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("mapinfoYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8")); /*서비스명=어플명*/
					url += ("&" + URLEncoder.encode("overviewYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8")); /*서비스명=어플명*/
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				
				
				//파일 읽어들이기
		        URL realUrl = new URL(url);
		        HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
		        conn.setRequestMethod("GET");
		        conn.setRequestProperty("Content-type", "application/json");
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
		        JSONObject item = items.getJSONObject("item");
		      
		        // VO에 저장
		        Gson gson = new Gson();
		        CommonDetailVO vo = gson.fromJson(item.toString(), CommonDetailVO.class);
		        
		        //값 지정해서 콘텐츠 아이디 뽑아버리기
		        //log.debug(vo.contentid);
		        
		        return vo;
	}
}
