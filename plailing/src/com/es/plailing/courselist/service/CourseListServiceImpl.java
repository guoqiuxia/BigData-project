package com.es.plailing.courselist.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.es.plailing.courselist.dao.CourseListDaoImpl;

@Service
@Transactional(readOnly=true)
public class CourseListServiceImpl implements CourseListService{
	@Resource
	private CourseListDaoImpl courseListDaoImpl;
}
