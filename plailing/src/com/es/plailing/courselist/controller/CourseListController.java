package com.es.plailing.courselist.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.es.plailing.courselist.service.CourseListServiceImpl;

/**
 * 
    * @ClassName: CourseListController
    * @Description: TODO(courselist页的控制类)
    * @author lenovo
    * @date 2018年11月28日
    *
 */
@Controller
public class CourseListController {
	@Resource
	private CourseListServiceImpl courseListServiceImpl;
/**
 * 
    * @Title: parentCourseType
    * @Description: TODO(查找课程的父类型)
    * @param @param request
    * @param @return    参数
    * @return String    返回类型
    * @throws
 */
	@RequestMapping("parentCourseType")
	public String parentCourseType(HttpServletRequest request) {
		return "courselist";
	}
}
