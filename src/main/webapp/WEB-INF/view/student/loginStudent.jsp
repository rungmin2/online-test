<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<!-- 로그인 전 -->
	<c:if test="${loginStudent == null}">
		<h1>로그인</h1>
		<form method="post" action="${pageContext.request.contextPath}/loginStudent">
			<table border="1">
				<tr>
	          		<td>studentId</td>
		          	<td><input type="text" name="studentId"></td>
	       		</tr>
	       		<tr>
	       		 	<td>studentPw</td>
	          		<td><input type="password" name="studentPw"></td>
				</tr>
		    </table>
		    <button type="submit">로그인</button>
		</form>
	</c:if>
	
	<!-- 로그인 후 -->
	<c:if test="${loginStudent != null}">
		${loginStudent.studentName}님 반갑습니다
		<a href="${pageContext.request.contextPath}/student/logout">로그아웃</a>
	</c:if>
</body>
</html>