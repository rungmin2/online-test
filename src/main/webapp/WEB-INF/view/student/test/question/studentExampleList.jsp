<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>${testTitle}</h1>
	<form action="${pageContext.request.contextPath}/student/test/paper/addPaper" method="post">
		<table border="1">	
			<c:forEach var="q" items="${list}">
				<input type="hidden" name="studentNo" value="${studentNo}">
				<input type="hidden" name="questionNo" value="${q.questionNo}">
				<tr>
					<th>${q.questionIdx}번</th>
					<th>${q.questionTitle}</th>
				</tr>		
				<c:forEach var="e" items="${list2}" begin="${(q.questionIdx-1)*4}" end="${(q.questionIdx-1)*4+3}">	
					<tr>
						<td>${e.exampleIdx}</td>
						<td>${e.exampleTitle}</td>	
					</tr>	
				</c:forEach>
				<tr>
					<td colspan="2">
						<input type="checkbox" name="answer" value="1">1
						<input type="checkbox" name="answer" value="2">2
						<input type="checkbox" name="answer" value="3">3
						<input type="checkbox" name="answer" value="4">4
					</td>
				</tr>
			</c:forEach>		
		</table>
		<button type="submit">답안 제출</button>
	</form>	
</body>
</html>