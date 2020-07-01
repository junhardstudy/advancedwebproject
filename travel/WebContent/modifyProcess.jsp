<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="Post.*"%>
<%@ page import="java.io.*"%>

<% 
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html; charset=utf-8");

%>


<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<%
		String userid = null;
		int postid = 0;
		
		
		if(session.getAttribute("userid") != null){
			userid = (String)session.getAttribute("userid");
		}
		if(userid == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 접근입니다')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		
		if(request.getParameter("postid") != null){
			postid = Integer.parseInt(request.getParameter("postid"));
		}
		if(postid == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 접근입니다')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		
		PostData PostData = new PostDB().getPostData(postid);
		if(!userid.equals(PostData.getPostuserid())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 접근입니다')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		else{
			if(request.getParameter("posttitle") == null || request.getParameter("postcontents")==null || request.getParameter("posttitle").equals("")||request.getParameter("postcontents").equals("")){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('예외 처리 필요')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PostDB PostDB = new PostDB();
				int result = PostDB.modifyPost(postid, request.getParameter("posttitle"), request.getParameter("postcontents"));
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글수정에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
				}
				else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href='postslistview.jsp'");
					script.println("</script>");
				}
			}
		}
	%>

</body>
</html>