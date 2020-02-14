package com.yc.springboot.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.springboot.bean.Users;
import com.yc.springboot.bean.UsersExample;
import com.yc.springboot.dao.UsersMapper;

@Service
public class UserBiz {
	@Resource
	private UsersMapper um;

	public Users select(Users user) throws BizException {
		UsersExample ue=new UsersExample();
		ue.createCriteria()
		.andPasswordEqualTo(user.getPassword())
		.andUsernameEqualTo(user.getUsername());
		List<Users> list= um.selectByExample(ue);
		if(list.size()==0) {
			throw new BizException("用户名或密码错误");
		}
		return list.get(0);
	}
	
	

}
