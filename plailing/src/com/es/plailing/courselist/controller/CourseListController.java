package com.es.plailing.courselist.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.es.plailing.courselist.service.CourseListServiceImpl;

/**
 * 
    * @ClassName: CourseListController
    * @Description: TODO(courselistҳ�Ŀ�����)
    * @author lenovo
    * @date 2018��11��28��
    *
 */
@Controller
public class CourseListController {
	@Resource
	private CourseListServiceImpl courseListServiceImpl;
/**
 * 
    * @Title: parentCourseType
    * @Description: TODO(���ҿγ̵ĸ�����)
    * @param @param request
    * @param @return    ����
    * @return String    ��������
    * @throws
 */
	@RequestMapping("parentCourseType")
	public String parentCourseType(HttpServletRequest request) {
		return "courselist";
	}
}
