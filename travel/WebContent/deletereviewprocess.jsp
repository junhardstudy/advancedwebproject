<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="Review.*"%>
<%@ page import="java.io.*"%>

<% 
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html; charset=utf-8");

%>
<html>
<head></head>
<body>
	<%
		int reviewid=0;
		reviewid = Integer.parseInt(request.getParameter("reviewid"));
	
		int result = new ReviewDB().deleteReview(reviewid);
		if(result != -1){
			System.out.println("글삭제 성공");
		}
		else{
			System.out.println("글삭제 실패");
		}
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='postslistview.jsp'");
		script.println("</script>");
	%>
</body>

</html>