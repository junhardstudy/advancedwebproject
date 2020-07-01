<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Post.*" %>

<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 보기</title>
</head>
<body>
	<%
		String userid = null;
		if(session.getAttribute("userid") != null){
			userid = (String)session.getAttribute("userid");
		}
		
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
	<div class="container">
		게시글
		<h2>제목 : </h2><%= PostData.getPosttitle() %>
		<h2>내용 : </h2><%= PostData.getPostcontents() %>
		<h3>글 작성일 : </h3><%= PostData.getPostdate() %>
	</div>
	
	<%
		if(userid != null && userid.equals(PostData.getPostuserid())){
	%>
		<a href="modify.jsp?postid=<%=postid %>" class="btn btn-primary">수정</a>
		<a href="deletepostprocess.jsp?postid=<%=postid %>" class="btn btn-primary">삭제</a>
	
	<%
		}
	%>
	<%
		if(userid != null){
	%>
	<jsp:include page="reviewWrite.jsp" flush="false">
		<jsp:param name="postid" value="<%=postid %>"/>
		<jsp:param name="userid" value="<%=userid %>"/>
	</jsp:include>
	<%
		}
	%>
	<jsp:include page="reviewListView.jsp" flush="false">
		<jsp:param name="postid" value="<%=postid %>"/>
		<jsp:param name="userid" value="<%=userid %>"/>
	</jsp:include>
</body>
</html>