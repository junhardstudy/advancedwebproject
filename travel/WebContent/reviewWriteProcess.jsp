<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="Review.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.PrintWriter" %>

<% 
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html; charset=utf-8");
%>

<%
	PrintWriter script = response.getWriter();

	String userid = request.getParameter("userid");
	int postid = Integer.parseInt(request.getParameter("postid"));
	String reviewcontents = request.getParameter("reviewcontents");
	int reviewscore = Integer.parseInt(request.getParameter("reviewscore"));
	ReviewData ReviewData = new ReviewData();
	
	ReviewData.setPostid(postid);
	ReviewData.setReviewcontents(reviewcontents);
	ReviewData.setReviewscore(reviewscore);
	
	if((ReviewData.getReviewcontents() ==null)||(ReviewData.getReviewscore() == -1)){
		script.println("<script>");
		script.println("alert('입력이 안된 사항이 있습니다')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		ReviewDB ReviewDB = new ReviewDB();
		int result = ReviewDB.write(postid, userid, reviewcontents, reviewscore);
		if(result == -1){
			script.println("<script>");
			script.println("alert('리뷰 등록에 실패했습니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			script.println("<script>");
			script.println("location.href='postslistview.jsp'");
			script.println("</script>");
		}
	}
	
%>