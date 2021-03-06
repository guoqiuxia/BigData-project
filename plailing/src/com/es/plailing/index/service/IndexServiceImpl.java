package com.es.plailing.index.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.es.plailing.entity.Course;
import com.es.plailing.entity.CourseCatalog;
import com.es.plailing.entity.User;
import com.es.plailing.index.dao.IndexDaoImpl;
/**
 * 
    * @ClassName: IndexServiceImpl
    * @Description: TODO(index页面service实现类)
    * @author 梁雅茹
    * @date 2018年12月8日
    *
 */
@Service
public class IndexServiceImpl implements IndexService{
	@Resource
	private IndexDaoImpl indexDaoImpl;

	@Override
	public List<Course> listCoursesByGrades() {
		// TODO Auto-generated method stub
		try {
			return this.indexDaoImpl.listCourseByGrades();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Course> listHotCourses() {
		// TODO Auto-generated method stub
		try {
			return this.indexDaoImpl.listHotCourse();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Map<Integer, Double> recommend(int userId) {
		// TODO Auto-generated method stub
		return this.indexDaoImpl.recommend(userId);
	}

	@Override
	public List recommendCourses(int courseId, int userId) {
		// TODO Auto-generated method stub
		return this.indexDaoImpl.recommendCourses(courseId,userId);
	}

	@Override
	public boolean writeMap(int uid, Map<Integer, Double> map) {
		// TODO Auto-generated method stub
		return this.indexDaoImpl.writeMap(uid, map);
	}

	@Override
	public Map<Integer, Double> changeGrade(int userID, int courseID, Map<Integer, Double> map) {
		// TODO Auto-generated method stub
		return this.indexDaoImpl.changeGrade(userID, courseID, map);
	}

	@Override
	public Map<Object, Integer> transferMap(Map<Integer, Double> map) {
		// TODO Auto-generated method stub
		return this.indexDaoImpl.transferMap(map);
	}

	@Override
	public int getCount(int userID, int courseID) {
		// TODO Auto-generated method stub
		return this.indexDaoImpl.getCount(userID, courseID);
	}
	
	
}
