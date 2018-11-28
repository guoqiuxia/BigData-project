package com.es.plailing.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.es.plailing.user.dao.UserDaoImpl;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserDaoImpl userDaoImpl;
}
