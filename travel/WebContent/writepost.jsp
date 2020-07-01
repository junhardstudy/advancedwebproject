<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 작성</title>
<style>
	h1{
	text-align:center;
	top: 12%;
	position: relative;
	color:white;
	font-weight : bold;
	}
	table{
	
	top: 15%;
	width : 70%;
	height:50px;
	margin: auto; 
	position: relative;
	vertical-allign:3px;
	
	}
	input{
	
	}
	#title{
	 width:100%;
	position: relative;
	}
	#main{
	text-align: justify; 
	text-align-last: left;
	word-wrap: normal;
	 width:100%;
	height:500px;
	position: relative;
	white-space:normal;
	word-break:normal;
	text-overflow:clip;
	}
	#a{
	 position: relative;
	 float: right;
	}		
</style>
</head>
<body>
<%@ include file="menu.jsp"%>

<h1> 여행 기록을 적어주세요</h1>
<table>
	 <tr>
		
		<td>
			<input id= "title" type="text" name="posttitle" placeholder="제목" required /">
			
		</td>
	</tr>	
	<tr>	
		<td >
			<input id= "main" type="text" name="postcontents"  placeholder="내용" cols="50" rows="13" required/ >
		</td>
	</tr>	
	<tr>
		<td>
			<form action="wirtepostProcess.jsp" method="post">
				<input id= "a" type="submit" value="글 작성"/>
			</form>	
		</td>
	
 	</tr>

</table>		
	
	

</body>
</html>