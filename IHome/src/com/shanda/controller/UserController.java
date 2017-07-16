package com.shanda.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String addUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		int viewFlage = Integer.valueOf(request.getParameter("view"));
		int id = Integer.valueOf(request.getParameter("uid"));
		if(viewFlage==1) {
			User user = userDao.findById(id);
			session.setAttribute("user", user);
		}
		session.setAttribute("viewFlage", viewFlage);
		return "user/addUser";
	}
	
	@RequestMapping("/submitUser.do")
	public String submitUser(User user) {
		user.setName(user.getName());
		user.setPassport(user.getPassport());
		user.setJob(user.getJob());
		user.setQq(user.getQq());
		user.setWeixin(user.getWeixin());
		user.setPhone(user.getPhone());
		user.setAddress(user.getAddress());
		user.setType(user.getType());

		boolean addUserBoolean  = userDao.save(user);
		
		return "redirect:/user/findUser.do";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateUser(HttpServletRequest request) {
		return "/user/updateUser";
	}
	
	@RequestMapping("/submitUpdate.do")
	public String submitUpdate(User user) {
		
		user.setId(user.getId());
		user.setName(user.getName());
		user.setPassport(user.getPassport());
		user.setJob(user.getJob());
		user.setQq(user.getQq());
		user.setWeixin(user.getWeixin());
		user.setPhone(user.getPhone());
		user.setAddress(user.getAddress());
		user.setType(user.getType());

		boolean addUserBoolean  = userDao.updateUser(user);
		
		return "redirect:/user/findUser.do";
	}
	
}
