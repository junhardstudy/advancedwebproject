<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="Post.PostDB"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.PrintWriter" %>
<% 
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html; charset=utf-8");

%>
<jsp:useBean id="PostData" class="Post.PostData" scope="page"/>
<jsp:setProperty property="posttitle" name="PostData"/>
<jsp:setProperty property="postcontents" name="PostData"/>


<%

	if((PostData.getPosttitle() == null) || (PostData.getPostcontents() == null)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안된 사항이 있습니다')");
		script.println("history.back()");
		script.println("</script>");
	}
	else{
		PostDB PostDB = new PostDB();
		int result = PostDB.write(PostData.getPosttitle(), (String)session.getAttribute("userid"), PostData.getPostcontents());
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다')");
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

%>

