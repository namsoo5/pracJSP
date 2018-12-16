<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ page import="member.Member" %>
    <%@ page import="member.MemberDao" %>
    <%@ page import="service.ChangeMemberService" %>
    <%@ page import="service.MemberListView" %>
    <%@ page import="service.GetMemberListService" %>
    
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="member.Member">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<%
	ChangeMemberService changeService = ChangeMemberService.getInstance();
    changeService.Change(member);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경완료</title>
</head>
<body>
회원 정보 수정 하였습니다.
<a href="main.jsp">[메인으로가기]</a>
</body>
</html>