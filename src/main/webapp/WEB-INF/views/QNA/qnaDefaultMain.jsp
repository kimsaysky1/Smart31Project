<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바트리(지식인) 메인</title>
<script type="text/javascript" src="script/jquery-2.2.2.min.js"></script>
<script src="script/jquery-ui.min.js" type="text/javascript"></script>
</head>
<body>
	<s:iterator value="questionList">
		<a href="qnaDetail.action?questionno=<s:property value="questionno"/>"><s:property value="title"/></a>
	</s:iterator>
</body>
</html>