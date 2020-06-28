<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>여행가조</title>
<style>
	body{
	background-color : black;
	}
	div{ text-align: center;  display: table; margin-left: auto; margin-right: auto; 
	}
</style>
</head>
<body>
	<jsp:include page="menu_bar.jsp" />
	<div>
	<p>사진들나올곳? 등록 -> 보이기 연결해야함 예시...</p>
	<img src= "https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/1apY/image/G98yZRNBNjRcPz2a8p-JBmKqCrM.jpg"  style="max-width: 100%; height: auto;"> 
	</div>
	<%@ include file="description.jsp"%>
	<%@ include file="contents_list.jsp"%>
	
</body>
</html>