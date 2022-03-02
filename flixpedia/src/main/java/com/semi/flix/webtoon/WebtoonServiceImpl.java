package com.semi.flix.webtoon;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("webtoonService")
public class WebtoonServiceImpl implements WebtoonService {
	
	@Resource(name="webtoonDao")
	WebtoonDao webtoonDao;

	@Override
	public List<WebtoonDto> getList(WebtoonDto dto) {
		// TODO Auto-generated method stub
		return webtoonDao.getList(dto);
	}

	@Override
	public int getTotal(WebtoonDto dto) {
		// TODO Auto-generated method stub
		return webtoonDao.getTotal(dto);
	}

	@Override
	public WebtoonDto getView(WebtoonDto dto) {
		// TODO Auto-generated method stub
		return webtoonDao.getView(dto);
	}
	
	
}
