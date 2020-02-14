package com.yc.springboot.web;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.springboot.bean.Users;
import com.yc.springboot.biz.BizException;
import com.yc.springboot.biz.UserBiz;
import com.yc.springbooti.vo.Result;

@Controller
@SessionAttributes("logineduser")
public class loginAction {
	@Resource
	private UserBiz ub;
	@GetMapping("login")
	public String tologin() {
		return "login";
	}
	@ResponseBody
	@PostMapping("login.do")
	public Result login(Model m, @Valid Users user,Errors errors) {
		System.out.println(user);
		if(errors.hasErrors()) {
			return new Result(2,"表单验证错误！",errors.getFieldErrors());
		}
			try {
				Users logineduser=ub.select(user);
				m.addAttribute("logineduser", logineduser);
				return new Result(0,"登陆成功",user);
			} catch (BizException e) {
				e.printStackTrace();
				return new Result(0,e.getMessage());
			}catch(RuntimeException e){
				e.printStackTrace();
				return new Result(0,"业务繁忙！请稍后再试");
			}
	}
	@PostMapping("tolist")
	public String tolist() {
		return "list";
	}
}
