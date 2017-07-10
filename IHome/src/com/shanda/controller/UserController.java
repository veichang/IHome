package com.shanda.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shanda.dao.UserDao;
import com.shanda.entity.User;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserDao userDao;

	@RequestMapping("/findUser.do")
	public String find(Model model) {
		List<User> users = userDao.findAll();
		model.addAttribute("users",users);
		return "user/user_list";
	}
	
	@RequestMapping("/addUser.do")
	public String addUser() {
		return "user/addUser";
	}
	
	@RequestMapping("/submitUser.do")
	public String submitUser(User user) {
		user.setName(user.getName());
		user.setJob(user.getJob());
		user.setQq(user.getQq());
		user.setWeixin(user.getWeixin());
		user.setPhone(user.getPhone());
		user.setAddress(user.getAddress());
		user.setType(user.getType());

		boolean addUserBoolean  = userDao.save(user);
		
		return "redirect:/user/findUser.do";
	}
}
