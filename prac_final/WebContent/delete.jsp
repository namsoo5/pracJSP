<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <% 	request.setCharacterEncoding("utf-8");%>
    <%@ page import="service. DeleteMemberService" %>
    
    <%
    	String memberId = request.getParameter("memberId");
    	DeleteMemberService deleteservice = new DeleteMemberService();
    	deleteservice.delete(memberId);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
</head>
<body>
회원삭제하였습니다<br>
<a href="main.jsp">[메인으로 가기]</a>
</body>
</html>