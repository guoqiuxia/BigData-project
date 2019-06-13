package com.es.plailing.index.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.es.plailing.coursedetail.service.CourseDetailService;
import com.es.plailing.entity.Course;
import com.es.plailing.entity.User;
import com.es.plailing.index.service.IndexServiceImpl;
import com.es.plailing.left.service.LeftServiceImpl;

@Controller
/**
 * 
 * @ClassName: IndexController
 * @Description: TODO(indexҳ��Ŀ�����)
 * @author ������
 * @date 2018��12��8��
 *
 */
public class IndexController {
	@Resource
	IndexServiceImpl indexServiceImpl;
	@Resource
	private CourseDetailService courseDetailServiceImpl;
	@Resource
	private LeftServiceImpl leftServiceImpl;

	/**
	 * 
	    * @Title: index
	    * @Description: TODO(������һ�仰�����������������)
	    * @param @param request
	    * @param @return    ����
	    * @return String    ��������
	    * @throws
	 */
	@RequestMapping("/index")
	public String index(HttpServletRequest request,@RequestParam(value="unlikeId",defaultValue="0") int unlikeId,
			@RequestParam(value="courseId",defaultValue="0") int cid) {
		List<Course> recomendCourse = this.indexServiceImpl.listCoursesByGrades();
		Map<Object, Integer> recomendCourses = new LinkedHashMap<Object, Integer>();
		for (Course c : recomendCourse) {
			recomendCourses.put(c, c.getJoinUsers().size());
		}
		request.getServletContext().setAttribute("recomendCourses", recomendCourses);

		List<Course> hotCourse = this.indexServiceImpl.listHotCourses();
		Map<Object, Integer> hotCourses = new LinkedHashMap<Object, Integer>();
		for (Course c : hotCourse) {
			hotCourses.put(c, c.getJoinUsers().size());
		}
		request.getServletContext().setAttribute("hotCourses", hotCourses);

		String email = (String) request.getSession().getAttribute("email");
		if (email != null) {
			request.getServletContext().setAttribute("loginFlag", 1);
//			ͨ���û�����õ��û�id
			User u = leftServiceImpl.findLeft(email);
			int userId = u.getUserId();
//          ��ȡ�ļ���ȡ�û����Ƽ��γ�
			Map<Integer, Double> map = indexServiceImpl.recommend(userId);
			
			Map<Integer,Double> newmap=new LinkedHashMap<Integer,Double>();
			int count=indexServiceImpl.getCount(userId, cid);
//			�û������ϲ���������Ƽ��γ��б�
			if(unlikeId==1 && cid !=0) {
				List<Integer> cidList = indexServiceImpl.recommendCourses(cid,userId);
//				�����б��е�courseId�ҵ���Ӧ��Course����
				List<Course> newcourseList = new ArrayList<Course>();
				for(int i = 0; i<cidList.size();i++) {
					Course c=courseDetailServiceImpl.getCourse((int)cidList.get(i));
					newcourseList.add(c);
				}
				
//				��courseList�б��е����ݷŵ�Map������
				Map<Object, Integer> newrecomendCourseList = new LinkedHashMap<Object, Integer>();
				for (Course c :  newcourseList) {
					newrecomendCourseList.put(c, c.getJoinUsers().size());
				}
//				����¼�û����Ƽ��γ̷��ص�ǰ��
				request.getServletContext().setAttribute("recomendCourses", newrecomendCourseList);
//				�޸�Ȩ�صõ��µ�map
				newmap = indexServiceImpl.changeGrade(userId, cid, map);
//				д���ļ�
				indexServiceImpl.writeMap(userId, newmap);
				
			}
			if(newmap.size()==0) {
				Map<Object, Integer> recomendCourseList = indexServiceImpl.transferMap(map);
//				����¼�û����Ƽ��γ̷��ص�ǰ��
				request.getServletContext().setAttribute("recomendCourses", recomendCourseList);
			}else {
				if(count==2){
					Map<Object, Integer> recomendCourseList = indexServiceImpl.transferMap(newmap);
				
//					����¼�û����Ƽ��γ̷��ص�ǰ��
					request.getServletContext().setAttribute("recomendCourses", recomendCourseList);
				}
			}
		} else {
			request.getServletContext().setAttribute("loginFlag", 0);
			
		}

		return "index";
	}

	
}