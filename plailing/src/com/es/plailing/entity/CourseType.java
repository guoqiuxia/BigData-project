package com.es.plailing.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="tbl_coursetype")
public class CourseType {
	private int typeId;
	private String typeName;
	//课程类型
	private Set<Course> courses=new HashSet<Course>();
	//子类型
	private Set<CourseType> courseTypes=new HashSet<CourseType>();
	//父类型
	private CourseType courseType;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	@OneToMany(mappedBy="courseType",targetEntity=CourseType.class,cascade={CascadeType.ALL})
	public Set<CourseType> getCourseTypes() {
		return courseTypes;
	}
	public void setCourseTypes(Set<CourseType> courseTypes) {
		this.courseTypes = courseTypes;
	}
	@ManyToOne
	@JoinColumn(name="pTypeId")
	public CourseType getCourseType() {
		return courseType;
	}
	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}
	@OneToMany(targetEntity=Course.class,cascade={CascadeType.ALL})
	public Set<Course> getCourses() {
		return courses;
	}
	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	} 
	
}
