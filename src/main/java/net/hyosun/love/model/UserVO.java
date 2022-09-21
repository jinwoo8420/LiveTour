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
public class UserVO {
	
	private String username;
	private String password;
	private String nickname;
	private String profile_img;
	private String profile_up_img;
	private String profile_bg;
	private String profile_up_bg;
	private String role;
	
	private String key;
	private String key_ok;
}
