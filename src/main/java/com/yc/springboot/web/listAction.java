package com.yc.springboot.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.yc.springboot.bean.House;
import com.yc.springboot.biz.HoseBiz;

@Controller
public class listAction {
	@Resource
	private HoseBiz hbiz;
	@GetMapping("tolist")
	public String tolist(Model m) {
		
		List<House> houses=hbiz.selectAll();
		m.addAttribute("houses", houses);
		System.out.println(houses);
		return "list";
	}

}
