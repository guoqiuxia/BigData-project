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
 * @Description: TODO(index页面的控制类)
 * @author 梁雅茹
 * @date 2018年12月8日
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
	    * @Description: TODO(这里用一句话描述这个方法的作用)
	    * @param @param request
	    * @param @return    参数
	    * @return String    返回类型
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
//			通过用户邮箱得到用户id
			User u = leftServiceImpl.findLeft(email);
			int userId = u.getUserId();
//          读取文件获取用户的推荐课程
			Map<Integer, Double> map = indexServiceImpl.recommend(userId);
			
			Map<Integer,Double> newmap=new LinkedHashMap<Integer,Double>();
			int count=indexServiceImpl.getCount(userId, cid);
//			用户点击不喜欢，更换推荐课程列表
			if(unlikeId==1 && cid !=0) {
				List<Integer> cidList = indexServiceImpl.recommendCourses(cid,userId);
//				根据列表中的courseId找到对应的Course对象
				List<Course> newcourseList = new ArrayList<Course>();
				for(int i = 0; i<cidList.size();i++) {
					Course c=courseDetailServiceImpl.getCourse((int)cidList.get(i));
					newcourseList.add(c);
				}
				
//				将courseList列表中的数据放到Map集合中
				Map<Object, Integer> newrecomendCourseList = new LinkedHashMap<Object, Integer>();
				for (Course c :  newcourseList) {
					newrecomendCourseList.put(c, c.getJoinUsers().size());
				}
//				将登录用户的推荐课程返回到前端
				request.getServletContext().setAttribute("recomendCourses", newrecomendCourseList);
//				修改权重得到新的map
				newmap = indexServiceImpl.changeGrade(userId, cid, map);
//				写入文件
				indexServiceImpl.writeMap(userId, newmap);
				
			}
			if(newmap.size()==0) {
				Map<Object, Integer> recomendCourseList = indexServiceImpl.transferMap(map);
//				将登录用户的推荐课程返回到前端
				request.getServletContext().setAttribute("recomendCourses", recomendCourseList);
			}else {
				if(count==2){
					Map<Object, Integer> recomendCourseList = indexServiceImpl.transferMap(newmap);
				
//					将登录用户的推荐课程返回到前端
					request.getServletContext().setAttribute("recomendCourses", recomendCourseList);
				}
			}
		} else {
			request.getServletContext().setAttribute("loginFlag", 0);
			
		}

		return "index";
	}

	
}