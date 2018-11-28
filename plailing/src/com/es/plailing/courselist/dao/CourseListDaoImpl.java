package com.es.plailing.courselist.dao;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


@Repository
public class CourseListDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
}
