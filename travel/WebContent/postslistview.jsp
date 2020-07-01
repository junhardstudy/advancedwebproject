<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Post.*" %>
<%@ page import="java.util.*" %>

<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시판</title>
</head>
<body>
	<%
		int pageNumber = 1;
	
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		
	%>
	
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
				<%
					PostDB PostDB = new PostDB();
					ArrayList<PostData> list = PostDB.getList(pageNumber);
					for(int i = 0; i < list.size(); i++){
				%>
				<tr>
					<td><%= list.get(i).getPostid() %></td>
					<td><a href="postView.jsp?postid=<%=list.get(i).getPostid() %>"><%=list.get(i).getPosttitle() %></a></td>
					<td><%=list.get(i).getPostuserid() %></td>
					<td><%=list.get(i).getPostdate().substring(0, 11) + list.get(i).getPostdate().substring(11, 13) + "시"+ list.get(i).getPostdate().substring(14, 16) + "분"%></td>
				</tr>
				<%
					}
				%>
			</tbody>
			</table>
			<!-- 페이지 넘기는 버튼이랑 핸들링 -->
				<%
					if (pageNumber != 1) {
				%>
				<a href="postslistview.jsp?pageNumber=<%=pageNumber - 1%>"
					class="btn btn-success btn-arrow-left">이전</a>
				<%
					}
					if (PostDB.nextPage(pageNumber)) {
				%>
				<a href="postslistview.jsp?pageNumber=<%=pageNumber + 1%>"
					class="btn btn-success btn-arrow-left">다음</a>
				<%
					}
				%>
		</div>
	</div>
</body>
</html>