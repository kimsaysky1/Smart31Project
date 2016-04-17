package org.javatree.www.Action;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.javatree.www.DAO.QnaDAO;
import org.javatree.www.VO.Question;
import org.javatree.www.VO.Reply;
import org.javatree.www.VO.Rereply;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

public class QnaAction extends ActionSupport {
	@Autowired
	private SqlSession sqlsession;

	private Question question;
	private int questionno;
	private Reply reply;
	private int replyno;
	private Rereply rereply;
	private List<Question> questionList;
	private List<Reply> replyList;

	public String insertQuestion() throws Exception {
		QnaDAO dao = sqlsession.getMapper(QnaDAO.class);
		question.setId("1");
		question.setUsername("1");
		question.setQuestionno(1);
		question.setTypeno(1);
		question.setCodingno(1);
		System.out.println("question: " + question);
		dao.insertQuestion(question);
		return SUCCESS;
	}
	
	public String insertReplyReady() throws Exception{
		QnaDAO dao = sqlsession.getMapper(QnaDAO.class);
		question = dao.selectOneQuestion(questionno);
		return SUCCESS;
	}

	public String insertReply() throws Exception {
		QnaDAO dao = sqlsession.getMapper(QnaDAO.class);
		System.out.println("reply: "+reply);
		reply.setId("1");
		reply.setUsername("1");
		dao.insertReply(reply);
		question = dao.selectOneQuestion(reply.getQuestionno());
		replyList = dao.selectAllReply(reply.getQuestionno());
		return SUCCESS;
	}

	public String qnaDefaultMain() throws Exception {
		QnaDAO dao = sqlsession.getMapper(QnaDAO.class);
		questionList = dao.selectAllQuestion();
		return SUCCESS;
	}

	public String qnaDetail() throws Exception {
		QnaDAO dao = sqlsession.getMapper(QnaDAO.class);
   		question = dao.selectOneQuestion(questionno);
		replyList = dao.selectAllReply(questionno);
		return SUCCESS;
	}
	
	public String insertRereply() throws Exception{
		System.out.println("rereply: "+rereply);
		
		
		return SUCCESS;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public Rereply getRereply() {
		return rereply;
	}

	public void setRereply(Rereply rereply) {
		this.rereply = rereply;
	}

	public List<Question> getQuestionList() {
		return questionList;
	}

	public void setQuestionList(List<Question> questionList) {
		this.questionList = questionList;
	}

	public List<Reply> getReplyList() {
		return replyList;
	}

	public void setReplyList(List<Reply> replyList) {
		this.replyList = replyList;
	}

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

}
