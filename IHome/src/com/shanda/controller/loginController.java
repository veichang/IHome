package com.shanda.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shanda.dao.UserDao;
import com.shanda.entity.User;



@Controller
@RequestMapping("/login")
public class loginController {
	
	@Resource
	private UserDao userDao;
	
	@RequestMapping("/toLogin.do")
	public String toLogin() {
		return "main/login";
	}
	
	
	@RequestMapping("/login.do")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			String passport = request.getParameter("passport");
			User user = userDao.findByName(name);
			int status;
			if(user == null) {
				status = 0;
			}else {
				
				HttpSession session = request.getSession();
				if(passport != "" && passport.equals(user.getPassport())) {
					session.setAttribute("user", user);
					status = 1;
				}else {
					status = 2;
				}
			}
			out.println(status);
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/toIndex.do")
	public String toIndex(HttpServletRequest request) {
		return "main/index";
	}
	
	
}
