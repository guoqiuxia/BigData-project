package com.es.plailing.index.service;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.es.plailing.entity.Course;
import com.es.plailing.entity.CourseCatalog;
import com.es.plailing.entity.User;
/**
 * 
    * @ClassName: IndexService
    * @Description: TODO(index页面service接口类)
    * @author 梁雅茹
    * @date 2018年12月8日
    *
 */
@Service
public interface IndexService {
	public List<Course> listCoursesByGrades();
	public List<Course> listHotCourses();
	
	public Map<Integer, Double> recommend(int userId);
	public List recommendCourses(int courseId,int userId);
	
	public boolean writeMap(int uid, Map<Integer, Double> map);
	
	public Map<Integer, Double> changeGrade(int userID, int courseID, Map<Integer, Double> map);
	
	public Map<Object, Integer> transferMap(Map<Integer,Double> map);
	
	public int getCount(int userID, int courseID);
}
