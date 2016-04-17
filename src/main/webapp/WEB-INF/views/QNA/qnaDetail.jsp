<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자세히 보기</title>
<script type="text/javascript" src="resources/jquery-2.2.2.min.js"></script>
</head>
<body>
	<h1>질문영역</h1>
		<table border="1">
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
			<tr>
				<td align="right">
					<a href= "insertReplyReady.action?questionno=${question.questionno}">답변달기</a>
				</td>
			</tr>
		</table>
		
	
		<s:iterator value="replyList">
			<h2>답변영역</h2>	
			<s:property value="username"/> : <s:property value="content"/>
			<br/>
			<s:if test="rereplyList != null">
				<h4>덧글영역</h4>
				<s:iterator value ="rereplyList">
					<s:property value="id"/> : <s:property value="content"/>
					<br/>
				</s:iterator>
				<hr/>
			</s:if>
			<br/>
		</s:iterator>
	<%-- <h3>덧글영역</h3>
		<div id = "rereplyarea">
			<s:if test="bigRereplyList != null">
				<s:iterator value="bigRereplyList">
					<s:iterator value = "smallRereplyList">
						<s:property value="username"/> : <s:property value="content"/>
						<br/>
					</s:iterator>
				</s:iterator>
			</s:if>
		</div> --%>
		
	<button id ="rereply">덧글달기</button>
	<div id = "rereplyform">
		<input type = "text" id ="rereplytext" />
		<button id = "confirm">확인</button>
	</div>
	
	<script type="text/javascript">
		$(function(){
			
			$("#rereplyform").hide();
			
			$("#rereply").on('click', function(){
				$("#rereplyform").slideDown();
			});
			
			$("#confirm").on('click', function(){
				$("#rereplyform").slideUp();
				var rereply = $("#rereplytext").val();
				alert(rereply);
				/* $.ajax({
					type: 'POST'
					, url: 'insertRereply'
					, data : 'rereply.replyno='+1+'&rereply.content='+rereply
					, dataType : 'json'
					, success : function(response){
						$('#rereplyarea').html('');
						var list = response.smallRereplyList;
						if(list == null){
							alert('덧글등록실패');
						}else{
							list.forEach(function(rereply){
								var p = $('<p></p>');
								p.html(rereply.id +':'+rereply.content).appendTo('#rereplyarea');
							});
							alert('덧글등록성공');
						}
					}	
				}); */
			});	
		});
		
	</script>			
</body>
</html>