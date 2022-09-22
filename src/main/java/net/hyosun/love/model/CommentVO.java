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
public class CommentVO {
	private String c_seq;
	private String content_id;
	private String username;
	private String comment;
	private String nickname;
	private String time;
	private String reg_time;
	private String profile_up_img;
}
