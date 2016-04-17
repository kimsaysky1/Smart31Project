package org.javatree.www.VO;

public class Lecture {
	public int courseno;
	public int lectureno;
	public String lecturename;
	public String regdate;
	public String originalfilename;
	public String uploadedfilename;
	
	public Lecture() {
		super();
	}
	public Lecture(int courseno, int lectureno, String lecturename, String regdate, String originalfilename,
			String uploadedfilename) {
		super();
		this.courseno = courseno;
		this.lectureno = lectureno;
		this.lecturename = lecturename;
		this.regdate = regdate;
		this.originalfilename = originalfilename;
		this.uploadedfilename = uploadedfilename;
	}
	public int getCourseno() {
		return courseno;
	}
	public void setCourseno(int courseno) {
		this.courseno = courseno;
	}
	public int getLectureno() {
		return lectureno;
	}
	public void setLectureno(int lectureno) {
		this.lectureno = lectureno;
	}
	public String getLecturename() {
		return lecturename;
	}
	public void setLecturename(String lecturename) {
		this.lecturename = lecturename;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getOriginalfilename() {
		return originalfilename;
	}
	public void setOriginalfilename(String originalfilename) {
		this.originalfilename = originalfilename;
	}
	public String getUploadedfilename() {
		return uploadedfilename;
	}
	public void setUploadedfilename(String uploadedfilename) {
		this.uploadedfilename = uploadedfilename;
	}
	@Override
	public String toString() {
		return "Lecture [courseno=" + courseno + ", lectureno=" + lectureno + ", lecturename=" + lecturename
				+ ", regdate=" + regdate + ", originalfilename=" + originalfilename + ", uploadedfilename="
				+ uploadedfilename + "]";
	}
	
	
	
}
