package com.shanda.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shanda.dao.UserDao;
import com.shanda.entity.User;



@Controller
@RequestMapping("/log")
public class login {
	
	@Resource
	private UserDao userDao;
	
	@RequestMapping("/login.do")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			String passport = request.getParameter("passport");
			User user = userDao.findByName(name);
			int status;
			boolean flage = false;
			if(user == null) {
				status = 0;
			}else {
				if(passport.equals(user.getPassport())) {
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
}
