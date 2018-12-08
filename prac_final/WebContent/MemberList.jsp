<%@page import="service.GetMemberListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@ page import="member.Member" %>
<%@ page import="java.util.Date" %>


<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="member.Member">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<%
	GetMemberListService MemberList = 
	new GetMemberListService();
	
	List<Member> memberlist = new ArrayList<Member>(); 
	memberlist = MemberList.getMemberList();
%>
<c:set var="member" value="<%=memberlist %>"/>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원명단</title>
</head>
<body>
	<h2>회원 명단</h2>

	<table border="1" width="100%">
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>가입일</td>
			<td>변경여부</td>
			<td>삭제여부</td>
		</tr>
		<c:forEach var="list" items="${member }">
			<tr>
				<td>${list.getId()}</td>
				<td>${list.getName()}</td>
				<td>${list.getTel()}</td>

				<td>${list.getRegdate()}</td>
				<td><a href="change.jsp?memberId=${list.getId()}">변경</a></td>
				<td><a href="delete.jsp?memberId=${list.getId()}">삭제</a></td>
			</tr>
		</c:forEach>
		</table>
		<a href="main.jsp">[메인으로가기]</a>
		
</body>
</html>