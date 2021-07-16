package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.SubwayDataVO;
import com.spring.mapper.SubwayMapper;

@Service
public class SubwayServiceImpl implements SubwayService {

	@Autowired
	private SubwayMapper mapper;
	
	@Override
	public SubwayDataVO subwaySelect(String subway_name) {
		return mapper.subwaySelect(subway_name);
	}

}
