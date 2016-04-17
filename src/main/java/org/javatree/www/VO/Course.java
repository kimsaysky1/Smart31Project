package org.javatree.www.VO;

public class Course {
	private int coureseno;
	private int typeno;
	private String coursename;
	private String id;
	private String username;
	private String introdution;
	
	
	public Course() {
		super();
	}
	public Course(int coureseno, int typeno, String coursename, String id, String username, String introdution) {
		super();
		this.coureseno = coureseno;
		this.typeno = typeno;
		this.coursename = coursename;
		this.id = id;
		this.username = username;
		this.introdution = introdution;
	}
	public int getCoureseno() {
		return coureseno;
	}
	public void setCoureseno(int coureseno) {
		this.coureseno = coureseno;
	}
	public int getTypeno() {
		return typeno;
	}
	public void setTypeno(int typeno) {
		this.typeno = typeno;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIntrodution() {
		return introdution;
	}
	public void setIntrodution(String introdution) {
		this.introdution = introdution;
	}
	@Override
	public String toString() {
		return "Course [coureseno=" + coureseno + ", typeno=" + typeno + ", coursename=" + coursename + ", id=" + id
				+ ", username=" + username + ", introdution=" + introdution + "]";
	}

	
}
