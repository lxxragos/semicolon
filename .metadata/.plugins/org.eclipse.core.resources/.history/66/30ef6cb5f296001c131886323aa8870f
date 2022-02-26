package com.semi.flix.drama;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

// DramaDaoImpl dramaDao = new DramaDaoImpl();
@Repository("dramaDao")
public class DramaDaoImpl implements DramaDao{
	
	@Autowired
	SqlSessionTemplate sm;

	@Override
	public List<DramaDto> getList(DramaDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Drama_getList",dto);
	}



}
