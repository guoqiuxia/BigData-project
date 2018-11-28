package com.es.plailing.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.es.plailing.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public void insert(User user) {
		Session session=this.sessionFactory.getCurrentSession();
		
	}

	@Override
	public void get() {
		// TODO Auto-generated method stub
		
	}
	
	
}
