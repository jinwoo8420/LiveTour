package net.hyosun.love.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class ApplyVO {
	
	private String seq;
	private String Company;
	private String Phone;
	private String Rocal;
	private String Cname;
	private String Tel;
	private String Biznum;
	private String username;

}
