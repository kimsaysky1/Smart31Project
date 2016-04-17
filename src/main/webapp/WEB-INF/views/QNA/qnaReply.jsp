<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변달기</title>
</head>
<body>
	<table>
		<tr>
			<td>번호</td>
			<td>${question.questionno}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${question.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${question.content}</td>
		</tr>
	</table>
	
	<s:form action="insertReply" method="post">
		<input type ="hidden" value="${question.questionno}" name="reply.questionno" />
		<s:textarea label="질문 내용" name="reply.content"></s:textarea>
		<s:submit value="작성"/>
		<s:reset value="취소"/>
	</s:form>	
</body>
</html>