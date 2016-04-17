package org.javatree.www.DAO;

import java.util.List;

import org.javatree.www.VO.Question;
import org.javatree.www.VO.Reply;
import org.javatree.www.VO.Rereply;

public interface QnaDAO {

	public void insertQuestion(Question question);
	public void insertReply(Reply reply);
	public List<Question> selectAllQuestion();
	public Question selectOneQuestion(int questionno);
	public List<Reply> selectAllReply(int questionno);
	public List<Rereply> selectAllRereply(int replyno);
	
}
