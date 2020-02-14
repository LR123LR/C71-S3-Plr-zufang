package com.yc.springboot.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.springboot.bean.House;
import com.yc.springboot.dao.HouseMapper;

@Service
public class HoseBiz {
	@Resource
	private HouseMapper hm;
	
	public List<House> selectAll() {
		return hm.selectByExample(null);
		
	}

}
