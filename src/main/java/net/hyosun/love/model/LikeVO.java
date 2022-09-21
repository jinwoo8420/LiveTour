package net.hyosun.love.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
 * 댓글에 like를 하려면
 * 
 * 댓글에 대한 key
 * like 를 클릭한 username
 */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class LikeVO {
	private int like_id;
	private int comment_id;
	private String username;
}
