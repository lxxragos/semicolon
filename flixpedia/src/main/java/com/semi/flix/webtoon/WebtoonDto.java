package com.semi.flix.webtoon;

import com.semi.flix.common.BaseDto;

public class WebtoonDto extends BaseDto {
	private String board_seq = "";	
	private String group_name = "";	
	private String genre_code = "";	
	private String toon_title = "";	
	private String toon_author = "";	
	private String toon_content = "";	
	private String toon_images = "";	
	private int toon_hit = 0;
	
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	
	
	public String getGenre_code() {
		return genre_code;
	}
	public void setGenre_code(String genre_code) {
		this.genre_code = genre_code;
	}
	public String getToon_title() {
		return toon_title;
	}
	public void setToon_title(String toon_title) {
		this.toon_title = toon_title;
	}
	public String getToon_author() {
		return toon_author;
	}
	public void setToon_author(String toon_author) {
		this.toon_author = toon_author;
	}
	public String getToon_content() {
		return toon_content;
	}
	public void setToon_content(String toon_content) {
		this.toon_content = toon_content;
	}
	public String getToon_images() {
		return toon_images;
	}
	public void setToon_images(String toon_images) {
		this.toon_images = toon_images;
	}
	public int getToon_hit() {
		return toon_hit;
	}
	public void setToon_hit(int toon_hit) {
		this.toon_hit = toon_hit;
	}
	
	
	
	
	

}
