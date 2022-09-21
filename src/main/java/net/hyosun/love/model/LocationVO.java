package net.hyosun.love.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LocationVO {
	public String addr1; //주소
	public String addr2; //상세주소
	public String areacode;//지역코드
	public String booktour;//교과서 속 여행지 여부
	public String cat1;//대분류
	public String cat2;//중분류
	public String cat3;//소분류
	public String contentid;//콘텐츠ID
	public String contenttypeid;//콘텐츠타입ID
	public String createdtime;//등록일
	public String firstimage;//대표이미지(원본)
	public String firstimage2;//대표이미지(썸네일)
	public String mapx;//GPS X좌표
	public String mapy;//GPS Y좌표
	public String mlevel;//Map Level
	public String modifiedtime;//수정일
	public String readcount;//조회수
	public String sigungucode;//시군구코드
	public String tel;//전화번호
	public String title;//제목
	public String zipcode;//우편번호
}
