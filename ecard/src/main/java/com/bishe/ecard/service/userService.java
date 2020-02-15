package com.bishe.ecard.service;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.ecard.dao.userDao;
import com.bishe.ecard.entity.user;
@Service
public class userService {
	@Autowired
	userDao tDao;
	public user find() {
		
		return tDao.find();
	}
	/*
	 * 登录验证
	 */
	public int loginvalited(String username) {
		
		return tDao.loginvalited(username);
	}
	public user loginpass(String username) {
		
		return tDao.loginpass(username);
		
	}
	public int insertUser(String username, String password, String email, Timestamp time) {
		
		return tDao.insertUser(username,password,email,time);
	}
	public int updateLoginTime(String username,Timestamp time) {
		
		return tDao.updateLoginTime(username,time);
	}
	public int updatepass(String username, String userpass) {
		
		return tDao.updatepass(username,userpass);
	}
	public user selectstatus(String username) {
		
		return tDao.selectstatus(username);
	}
	public List<user> userselect(String username) {
		// TODO Auto-generated method stub
		return tDao.userselect(username);
	}
	public List<user> userSelectAll() {
		
		return tDao.userSelectAll();
	}
	public int deleteuser(String username) {
		return tDao.deleteuser(username);
		
		
	}



}
