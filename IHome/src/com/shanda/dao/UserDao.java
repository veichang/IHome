package com.shanda.dao;

import java.util.List;

import javax.swing.border.EmptyBorder;

import com.shanda.annotation.MyBatisRepository;
import com.shanda.entity.User;

@MyBatisRepository
public interface UserDao {
	boolean save(User user);
	List<User> findAll();
}
