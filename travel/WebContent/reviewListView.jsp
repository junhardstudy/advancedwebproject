<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Review.*" %>
<%@ page import="java.util.*" %>

<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시판</title>
</head>
<body>
	<%
		int reviewpagenumber = 1;
		int postid = Integer.parseInt(request.getParameter("postid"));
		String userid = request.getParameter("userid");
	
		if(request.getParameter("reviewpagenumber") != null){
			reviewpagenumber = Integer.parseInt(request.getParameter("reviewpagenumber"));
		}
		
	%>
	
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">내용</th>				
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">점수</th>
					<th style="background-color: #eeeeee; text-align: center;">점수</th>
					<th style="background-color: #eeeeee; text-align: center;">점수</th>
				</tr>
			</thead>
			<tbody>
				<%
					ReviewDB ReviewDB = new ReviewDB();
					ArrayList<ReviewData> list = ReviewDB.getList(reviewpagenumber, postid);
					for(int i = 0; i < list.size(); i++){
				%>
				<tr>
					<td><%= list.get(i).getReviewcontents() %></td>
					<td><%=list.get(i).getReviewuserid() %></td>
					<td><%=list.get(i).getReviewscore() %></td>
					
					<%
						if(userid != null && userid.equals(list.get(i).getReviewuserid())){
					%>
						<td><a href="modifyreview.jsp?postid=<%=postid %>" class="btn btn-primary">수정</a></td>
						<td><a href="deletereviewprocess.jsp?reviewid=<%=list.get(i).getReviewid() %>" class="btn btn-primary">삭제</a></td>
	
					<%
						}else{
					%>
					<td> </td>
					<td> </td>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</tbody>
			</table>
			<!-- 페이지 넘기는 버튼이랑 핸들링 -->
				<%
					if (reviewpagenumber != 1) {
				%>
				<a href="reviewListView.jsp?pageNumber=<%=reviewpagenumber - 1%>"
					class="btn btn-success btn-arrow-left">이전</a>
				<%
					}
					if (ReviewDB.nextPage(reviewpagenumber)) {
				%>
				<a href="reviewListView.jsp?pageNumber=<%=reviewpagenumber + 1%>"
					class="btn btn-success btn-arrow-left">다음</a>
				<%
					}
				%>
		</div>
	</div>
</body>
</html>