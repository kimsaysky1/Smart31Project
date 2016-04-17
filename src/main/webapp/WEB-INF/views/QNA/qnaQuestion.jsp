<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="script/jquery-2.2.2.min.js"></script>
<script src="script/jquery-ui.min.js" type="text/javascript"></script>
<title>질문하기</title>
</head>
<body>
	<s:form action="insertReply" method="post">
		<s:textfield label="제목" name="question.title" />
		<s:textarea label="질문 내용" name="question.content"></s:textarea>
		<s:submit value="작성"/>
		<s:reset value="취소"/>
	</s:form>
</body>
</html>