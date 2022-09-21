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
public class QnaVO {
	private String seq;
	private String Category;
	private String Memo;
	private String Tel;
	private String Bizname;
	private String username;
	private boolean qna_check;
}
