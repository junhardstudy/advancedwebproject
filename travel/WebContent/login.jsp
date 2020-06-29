<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head></head>
<title>로그인</title>
<body>
	<a href="./index.jsp">메인으로</a>
	
	<form action="./loginProcess.jsp" method="post">
		<h2>아이디 : </h2><input type="text" name="userid" required>
		<h2>비밀번호 : </h2><input type="text" name="userpw" required>
		<input type="submit" value="로그인 하기">
	</form>
</body>
</html>