package org.javatree.www.VO;

import java.util.List;

public class Reply {
	private int questionno;
	private int replyno; // seq
	private String id;
	private String username;
	private String content;
	private String regdate;
	private int recommend;
	private List<Rereply> rereplyList; 
	
	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}

	public int getReplyno() {
		return replyno;
	}

	public void setReplyno(int replyno) {
		this.replyno = replyno;
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

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	@Override
	public String toString() {
		return "Reply [questionno=" + questionno + ", replyno=" + replyno + ", id=" + id + ", username=" + username
				+ ", content=" + content + ", regdate=" + regdate + ", recommend=" + recommend + "]";
	}

	public Reply() {
	}

	public Reply(int questionno, int replyno, String id, String username, String content, String regdate,
			int recommend) {
		this.questionno = questionno;
		this.replyno = replyno;
		this.id = id;
		this.username = username;
		this.content = content;
		this.regdate = regdate;
		this.recommend = recommend;
	}

	public List<Rereply> getRereplyList() {
		return rereplyList;
	}

	public void setRereplyList(List<Rereply> rereplyList) {
		this.rereplyList = rereplyList;
	}

	
}
