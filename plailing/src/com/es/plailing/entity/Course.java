package com.es.plailing.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="tbl_course")
public class Course {
	private int courseId;
	private String name;
	private String photo;
	private String price;
	private String courseInfo;
	//上传课程
	private User user;
	//加入
	private Set<User> joinUsers=new HashSet<User>();
	//收藏
	private Set<User> collectUsers=new HashSet<User>();
	//评分
	private Set<Grade> grades=new HashSet<Grade>();
	//课程类型
	private CourseType courseType;
	//课程目录
	private Set<CourseCatalog> courseCatalogs=new HashSet<CourseCatalog>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@ManyToOne
	@JoinColumn(name="userId")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCourseInfo() {
		return courseInfo;
	}
	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="tbl_userjoincourse",joinColumns= {@JoinColumn(name="courseId")},inverseJoinColumns= {@JoinColumn(name="userId")})
	public Set<User> getJoinUsers() {
		return joinUsers;
	}
	public void setJoinUsers(Set<User> joinUsers) {
		this.joinUsers = joinUsers;
	}
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="tbl_usercollectioncourse",joinColumns= {@JoinColumn(name="courseId")},inverseJoinColumns= {@JoinColumn(name="userId")})
	public Set<User> getCollectUsers() {
		return collectUsers;
	}
	public void setCollectUsers(Set<User> collectUsers) {
		this.collectUsers = collectUsers;
	}
	@OneToMany(mappedBy="course",targetEntity=Grade.class,cascade={CascadeType.ALL})
	public Set<Grade> getGrades() {
		return grades;
	}
	public void setGrades(Set<Grade> grades) {
		this.grades = grades;
	}
	@ManyToOne
	@JoinColumn(name="typeId")
	public CourseType getCourseType() {
		return courseType;
	}
	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}
	@OneToMany(mappedBy="course",targetEntity=CourseCatalog.class,cascade={CascadeType.ALL})
	public Set<CourseCatalog> getCourseCatalogs() {
		return courseCatalogs;
	}
	public void setCourseCatalogs(Set<CourseCatalog> courseCatalogs) {
		this.courseCatalogs = courseCatalogs;
	}
}
