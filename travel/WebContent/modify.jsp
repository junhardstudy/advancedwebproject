<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Post.*" %>

<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 수정</title>
</head>
<body>
	<%
		
		int postid = 0;
	if(request.getParameter("postid") != null){
		postid = Integer.parseInt(request.getParameter("postid"));
	}
	if(postid == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('잘못된 접근 입니다.')");
		script.println("location.href='postslistview.jsp'");
		script.println("</script>");
	}
	PostData PostData = new PostDB().getPostData(postid);
	
	%>
	
	<form action="modifyProcess.jsp?postid=<%=postid %>" method="post">
		<input type="text" name="posttitle" placeholder="제목" value="<%= PostData.getPosttitle() %>" required/>
		<input type="text" name="postcontents" placeholder="내용" value="<%= PostData.getPostcontents() %>" required/>
		<button type="submit">글 수정</button>
	</form> 
</body>
</html>