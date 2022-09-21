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

import net.hyosun.love.config.QualifierConfig;
import net.hyosun.love.model.LocationVO;
import net.hyosun.love.service.LodgmentLocationService;

@Service
public class LodgmentLocationServiceImpl implements LodgmentLocationService {

	// TODO 서울 지역별 API
	@Override
	public List<LocationVO> get_LodgmentLocation(String areaCode) throws IOException {
		// 공공데이터 키값하고 원하는 설정 연결하기
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"; /*URL*/
		try {
			url += ("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=" + QualifierConfig.KEY_1);
			url += ("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
					+ URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과수 이거 필수값 아님 없애도 됨*/
			url += ("&" + URLEncoder.encode("pageNo", "UTF-8") + "="
					+ URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호 이거 필수값 아님 없애도 됨*/
			url += ("&" + URLEncoder.encode("MobileOS", "UTF-8") + "="
					+ URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
			url += ("&" + URLEncoder.encode("MobileApp", "UTF-8") + "="
					+ URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
			url += ("&" + URLEncoder.encode("areaCode", "UTF-8") + "="
					+ URLEncoder.encode(areaCode, "UTF-8")); /*지역코드, 시군구코드*/
			url += ("&" + URLEncoder.encode("arrange", "UTF-8") + "="
					+ URLEncoder.encode("P", "UTF-8")); /*대표이미지 있는 조회순 정렬*/
			url += ("&" + URLEncoder.encode("contentTypeId", "UTF-8") + "="
					+ URLEncoder.encode("32", "UTF-8")); /*관광지 코드 선택*/
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// 파일 읽어들이기
		URL realUrl = new URL(url);
		HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}

		// 파일 읽어서 한줄씩 String에 저장하기
		String retString = "";
		String line;
		while ((line = rd.readLine()) != null) {
			retString += line;
		}
		rd.close();
		conn.disconnect();
		// System.out.println(retString.toString());

		// xml json으로 형변환
		JSONObject json = XML.toJSONObject(retString);
		String jsonStr = json.toString(4);

		// JSONObject형식으로 지정
		JSONObject jObject = new JSONObject(jsonStr);

		// response 안으로
		JSONObject response = jObject.getJSONObject("response");

		// body 안으로
		JSONObject body = response.getJSONObject("body");

		// items 안으로
		JSONObject items = body.getJSONObject("items");

		// item은 배열로 생성
		JSONArray item = items.getJSONArray("item");

		// json 배열을 List형으로 변형해서 VO에 저장
		Gson gson = new Gson();
		List<LocationVO> list = gson.fromJson(item.toString(), new TypeToken<List<LocationVO>>() {
		}.getType());

		// 값 지정해서 출력 성공!

		return list;
	}

	@Override
	public String getContentId(String areaCode) throws IOException {
		String contentId = get_LodgmentLocation(areaCode).get(0).contentid;
		return contentId;
	}

}
