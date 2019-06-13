package com.es.plailing.index.dao;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import java.util.TreeMap;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.es.plailing.coursedetail.service.CourseDetailService;
import com.es.plailing.entity.Course;
import com.es.plailing.util.BaseDao;

/**
 * 
 * @ClassName: IndexDaoImpl
 * @Description: TODO(index页面关于课程的dao)
 * @author 梁雅茹
 * @date 2018年12月8日
 *
 */
@Repository
public class IndexDaoImpl extends BaseDao<Course, Integer> {

	@Resource
	private CourseDetailService courseDetailServiceImpl;

	/**
	 * 
	 * @Title: listCourseByGrades @Description:
	 *         TODO(按价格查询12节课程) @param @return @param @throws Exception 参数 @return
	 *         List<Course> List<Course> @throws
	 */
	@SuppressWarnings("unchecked")
	public List<Course> listCourseByGrades() throws Exception {
		String hql = "from Course as c where c.state=1 and c.courseId in (select cc.course.courseId from CourseCatalog cc) order by c.grade desc";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setMaxResults(8);
		List<Course> list = query.list();
		return list;
	}

	/**
	 * 
	 * @Title: listHotCourse @Description:
	 *         TODO(按评分查询4节课程) @param @return @param @throws Exception 参数 @return
	 *         List<Course> List<Course> @throws
	 */
	@SuppressWarnings("unchecked")
	public List<Course> listHotCourse() throws Exception {
		String hql = "from Course as c where c.state=1 and c.courseId in (select cc.course.courseId from CourseCatalog cc) order by c.courseId desc";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setMaxResults(4);
		List<Course> list = query.list();
		return list;
	}

	/**
	 * 
	 * @Title: recommend @Description:
	 * TODO(读取文件，得到对该用户推荐的课程以及对应权重的Map) @param @param userId @param @return
	 * 参数 @return Map<Integer,Double> 返回类型 @throws
	 */
	public Map<Integer, Double> recommend(int userId) {
		try {
			FileInputStream fis = new FileInputStream("D:/p/plailing1.1/WebContent/WEB-INF/result.txt");
			InputStreamReader isr = new InputStreamReader(fis, "UTF-8");
			BufferedReader br = new BufferedReader(isr);
			String line = "";
			String[] arrs = null;
			Map<Integer, Double> map = new LinkedHashMap<Integer, Double>();
			while ((line = br.readLine()) != null) {
				arrs = line.split(";");
				if (arrs[0].equals(String.valueOf(userId))) {

					if (!arrs[1].equals("{}")) {
						String[] arrs1 = arrs[1].substring(1, arrs[1].length() - 1).split(",");
						for (int i = 0; i < arrs1.length; i++) {
							String[] arrmap = arrs1[i].split(":");
							if (i == 0) {
								map.put(Integer.parseInt(arrmap[0].substring(1, arrmap[0].length() - 1)),
										Double.parseDouble(arrmap[1]));
							} else {
								map.put(Integer.parseInt(arrmap[0].substring(2, arrmap[0].length() - 1)),
										Double.parseDouble(arrmap[1]));
							}
						}
						break;
					}

				}
			}
			return sortByValueDescending(map);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	/**
	 * 
	 * @Title: recommendCourses @Description: TODO(将用户不喜欢的课程放到列表的最后) @param @param
	 * courseId @param @param userId @param @return 参数 @return List 返回类型 @throws
	 */
	public List recommendCourses(int courseId, int userId) {
		Map<Integer, Double> map = recommend(userId);
		List list = new ArrayList(map.keySet());
		list.remove(list.indexOf(courseId));
		list.add(list.size(), courseId);
		if (list.size() >= 8) {
			return list.subList(0, 8);
		} else {
			return list;
		}
	}

	public static Map<Integer, Double> Probs = new TreeMap<Integer, Double>();

	/**
	 * 
	 * @Title: sortByValueDescending @Description:
	 * TODO(对权重修改之后的map重新进行排序) @param @param map @param @return 参数 @return Map<K,V>
	 * 返回类型 @throws
	 */
	public static <K, V extends Comparable<? super V>> Map<K, V> sortByValueDescending(Map<K, V> map) {
		List<Map.Entry<K, V>> list = new LinkedList<Map.Entry<K, V>>(map.entrySet());
		Collections.sort(list, new Comparator<Map.Entry<K, V>>() {
			@Override
			public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2) {
				int compare = (o1.getValue()).compareTo(o2.getValue());
				return -compare;
			}
		});

		Map<K, V> result = new LinkedHashMap<K, V>();
		for (Map.Entry<K, V> entry : list) {
			result.put(entry.getKey(), entry.getValue());
		}
		return result;
	}

	/**
	 * 
	    * @Title: writeMap
	    * @Description: TODO(将修改后的数据重新写入到文件当中)
	    * @param @param uid
	    * @param @param map
	    * @param @return    参数
	    * @return boolean    返回类型
	    * @throws
	 */
	public boolean writeMap(int uid, Map<Integer, Double> map) {
		try {
			FileInputStream fis = new FileInputStream("D:/p/plailing1.1/WebContent/WEB-INF/result.txt");
			InputStreamReader isr = new InputStreamReader(fis, "UTF-8");
			BufferedReader br = new BufferedReader(isr);
			String line = "";
			String[] arrs = null;
			StringBuffer buffer = new StringBuffer();
			while ((line = br.readLine()) != null) {
				arrs = line.split(";");
				if (arrs[0].equals(String.valueOf(uid))) {
					buffer.append(uid + ";{");
					Iterator<Entry<Integer, Double>> entries = map.entrySet().iterator();
					if (entries.hasNext()) {
						Entry<Integer, Double> entry = entries.next();
						buffer.append("\"" + entry.getKey() + "\": " + entry.getValue());
					}
					while (entries.hasNext()) {
						Entry<Integer, Double> entry = entries.next();
						buffer.append(", \"" + entry.getKey() + "\": " + entry.getValue());
					}
					buffer.append("}\r\n");
				} else {
					buffer.append(line + "\r\n");
				}
			}
			FileOutputStream fos = new FileOutputStream("D:/p/plailing1.1/WebContent/WEB-INF/result.txt");
			fos.write(buffer.toString().getBytes());
			fos.flush();
			fos.close();
			return true;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	/**
	 * 
	    * @Title: getCount
	    * @Description: TODO(读取文件，得到不喜欢的次数)
	    * @param @param userID
	    * @param @param courseID
	    * @param @return    参数
	    * @return int    返回类型
	    * @throws
	 */
	public int getCount(int userID, int courseID) {
		try {
			BufferedReader br = new BufferedReader(
					new FileReader("D:\\p\\plailing1.1\\WebContent\\WEB-INF\\feedbackFile.log"));
			String line = null;
			int count1 = 0;
			int count2 = 0;
			if ((line = br.readLine()) != null)
				while ((line = br.readLine()) != null) {
					String[] split = line.split("\\s+");
					int uid = (Integer.parseInt(split[1]));
					if (uid == userID) {
						int cid = (Integer.parseInt(split[2]));
						if (cid == courseID) {
							int num = (Integer.parseInt(split[4]));
							if (num == 0) {
								count1++;
							} else {
								count2++;
							}
						}
					}
				}
			br.close();
			return count1;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return 0;
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}

	}
	/**
	 * 
	    * @Title: changeGrade
	    * @Description: TODO(修改权重)
	    * @param @param userID
	    * @param @param courseID
	    * @param @param map
	    * @param @return    参数
	    * @return Map<Integer,Double>    返回类型
	    * @throws
	 */
	public Map<Integer, Double> changeGrade(int userID, int courseID, Map<Integer, Double> map) {
		int count = getCount(userID, courseID);
		map.put(courseID, map.get(courseID) * (1 - 0.5 * count));
		if (count == 2) {
			map.remove(courseID);
		}
		return map;
	}
	/**
	 * 
	    * @Title: transferMap
	    * @Description: TODO(转换map)
	    * @param @param map
	    * @param @return    参数
	    * @return Map<Object,Integer>    返回类型
	    * @throws
	 */
	public Map<Object, Integer> transferMap(Map<Integer,Double> map){
//		将读取到的Map的key值放到list列表中
		List<Integer> courseIdList = new ArrayList<Integer>(map.keySet());
		List<Integer> tempList = new ArrayList<Integer>();
//		取列表中的前八个数据
		if(courseIdList.size()>=8) {
			tempList = new ArrayList<Integer>(courseIdList.subList(0, 8)); 
		}else {
			tempList = courseIdList;
		}
//		根据列表中的courseId找到对应的Course对象
		List<Course> courseList = new ArrayList<Course>();
		for(int i = 0; i<tempList.size();i++) {
			Course c=courseDetailServiceImpl.getCourse((int)tempList.get(i));
			courseList.add(c);
		}
		
//		将courseList列表中的数据放到Map集合中
		Map<Object, Integer> recomendCourseList = new LinkedHashMap<Object, Integer>();
		for (Course c :  courseList) {
			recomendCourseList.put(c, c.getJoinUsers().size());
		}
		
		return recomendCourseList;
	}
}
