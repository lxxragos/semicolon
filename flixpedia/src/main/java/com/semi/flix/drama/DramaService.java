package com.semi.flix.drama;

import java.util.List;

public interface DramaService {
	List<DramaDto> getList(DramaDto dto);
	int getTotal(DramaDto dto);
	DramaDto getView(DramaDto dto);
}