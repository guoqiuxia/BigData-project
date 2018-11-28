package com.es.plailing.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="tbl_user")
public class User {
	private int userId;
	private String email;
	private String sex;
	private String nativePlace;
	private String phoneNumber;
	private String password;
	private String photo;
	private String nickName;
	private String birthday;
	private String identityNumber;
	private double balance;
	private String introduction;
	private String school;
	private String major;
	private String tag;
	//余额
	private Set<UserBalance> userBalances=new HashSet<UserBalance>();
	//上传课程
	private Set<Course> uploadCourses=new HashSet<Course>();
	//加入课程
	private Set<Course> joinCourses=new HashSet<Course>();
	//收藏课程
	private Set<Course> collectCourses=new HashSet<Course>();
	//评论
	private Set<Comment> comments=new HashSet<Comment>();
	//评分
	private Set<Grade>grades=new HashSet<Grade>();
	//老师
	private Set<Follow> teacherFollows=new HashSet<Follow>();
	//学生
	private Set<Follow> studentFollows=new HashSet<Follow>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getIdentityNumber() {
		return identityNumber;
	}
	public void setIdentityNumber(String identityNumber) {
		this.identityNumber = identityNumber;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNativePlace() {
		return nativePlace;
	}
	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	@OneToMany(mappedBy="user",targetEntity=UserBalance.class,cascade={CascadeType.ALL})
	public Set<UserBalance> getUserBalances() {
		return userBalances;
	}
	public void setUserBalances(Set<UserBalance> userBalances) {
		this.userBalances = userBalances;
	}
	@OneToMany(mappedBy="user",targetEntity=Course.class,cascade={CascadeType.ALL})
	public Set<Course> getUploadCourses() {
		return uploadCourses;
	}
	public void setUploadCourses(Set<Course> uploadCourses) {
		this.uploadCourses = uploadCourses;
	}
	@ManyToMany(mappedBy="joinUsers")
	public Set<Course> getJoinCourses() {
		return joinCourses;
	}
	public void setJoinCourses(Set<Course> joinCourses) {
		this.joinCourses = joinCourses;
	}
	@ManyToMany(mappedBy="collectUsers")
	public Set<Course> getCollectCourses() {
		return collectCourses;
	}
	public void setCollectCourses(Set<Course> collectCourses) {
		this.collectCourses = collectCourses;
	}
	@OneToMany(mappedBy="user",targetEntity=Comment.class,cascade={CascadeType.ALL})
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	@OneToMany(mappedBy="user",targetEntity=Grade.class,cascade={CascadeType.ALL})
	public Set<Grade> getGrades() {
		return grades;
	}
	public void setGrades(Set<Grade> grades) {
		this.grades = grades;
	}
	@OneToMany(mappedBy="teacherUsers",targetEntity=Follow.class,cascade={CascadeType.ALL})
	public Set<Follow> getTeacherFollows() {
		return teacherFollows;
	}
	public void setTeacherFollows(Set<Follow> teacherFollows) {
		this.teacherFollows = teacherFollows;
	}
	@OneToMany(mappedBy="studentUsers",targetEntity=Follow.class,cascade={CascadeType.ALL})
	public Set<Follow> getStudentFollows() {
		return studentFollows;
	}
	public void setStudentFollows(Set<Follow> studentFollows) {
		this.studentFollows = studentFollows;
	}

	
}
