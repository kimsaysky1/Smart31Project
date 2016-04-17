package org.javatree.www.VO;

public class Coding {
	private int codingno;
	private int typeno;
	private String codingquestion;
	private String codingtemplet;
	private int lectureno;
	
	
	public Coding() {
		super();
	}
	public Coding(int codingno, int typeno, String codingquestion, String codingtemplet, int lectureno) {
		super();
		this.codingno = codingno;
		this.typeno = typeno;
		this.codingquestion = codingquestion;
		this.codingtemplet = codingtemplet;
		this.lectureno = lectureno;
	}
	public int getCodingno() {
		return codingno;
	}
	public void setCodingno(int codingno) {
		this.codingno = codingno;
	}
	public int getTypeno() {
		return typeno;
	}
	public void setTypeno(int typeno) {
		this.typeno = typeno;
	}
	public String getCodingquestion() {
		return codingquestion;
	}
	public void setCodingquestion(String codingquestion) {
		this.codingquestion = codingquestion;
	}
	public String getCodingtemplet() {
		return codingtemplet;
	}
	public void setCodingtemplet(String codingtemplet) {
		this.codingtemplet = codingtemplet;
	}
	public int getLectureno() {
		return lectureno;
	}
	public void setLectureno(int lectureno) {
		this.lectureno = lectureno;
	}
	@Override
	public String toString() {
		return "Coding [codingno=" + codingno + ", typeno=" + typeno + ", codingquestion=" + codingquestion
				+ ", codingtemplet=" + codingtemplet + ", lectureno=" + lectureno + "]";
	}
	
	

	
}
