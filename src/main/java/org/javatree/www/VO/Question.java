package org.javatree.www.VO;

public class Question {
	private int questionno;
	private int typeno;
	private int codingno;
	private String id;
	private String username;
	private String title;
	private String content;
	private String regdate;
	private int hitcount;
	private int curious;

	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}

	public int getTypeno() {
		return typeno;
	}

	public void setTypeno(int typeno) {
		this.typeno = typeno;
	}

	public int getCodingno() {
		return codingno;
	}

	public void setCodingno(int codingno) {
		this.codingno = codingno;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getHitcount() {
		return hitcount;
	}

	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}

	public int getCurious() {
		return curious;
	}

	public void setCurious(int curious) {
		this.curious = curious;
	}

	public Question() {
	}

	public Question(int questionno, int typeno, int codingno, String id, String username, String title, String content,
			String regdate, int hitcount, int curious) {
		this.questionno = questionno;
		this.typeno = typeno;
		this.codingno = codingno;
		this.id = id;
		this.username = username;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.hitcount = hitcount;
		this.curious = curious;
	}

	@Override
	public String toString() {
		return "Question [questionno=" + questionno + ", typeno=" + typeno + ", codingno=" + codingno + ", id=" + id
				+ ", username=" + username + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", hitcount=" + hitcount + ", curious=" + curious + "]";
	}

}
