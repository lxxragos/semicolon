package com.semi.flix.webtoon;

import java.util.List;

public interface WebtoonService {
	List<WebtoonDto> getList(WebtoonDto dto);
	int getTotal(WebtoonDto dto);
	WebtoonDto getView(WebtoonDto dto);
}
