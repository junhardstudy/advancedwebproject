<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<%
		session.invalidate();	
	%>
	<script>
		alert("로그 아웃 되었습니다!");
		location.href="index.jsp";
	</script>

</body>
</html>