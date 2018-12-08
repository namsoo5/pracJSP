<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="service.GetMemberListService" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page import = "member.Member" %>
	<%@ page import = "java.util.List" %>
	<%@ page import = "java.util.ArrayList" %>
    <% 	request.setCharacterEncoding("utf-8");%>
    
    
<jsp:useBean id="member" class="member.Member">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>

	<% 
	GetMemberListService searchservice = new GetMemberListService();
	   String name = request.getParameter("name");
	   List<Member> memberlist = new ArrayList<Member>();
	   memberlist = searchservice.getMemberInputName(name);

	%>
	<c:set var="member" value="<%= memberlist%>"/>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색완료</title>
</head>
<body>

<c:if test="${member == null}">
등록된회원이 없습니다.
</c:if>

<c:if test="${member != null }">
	<h2>회원명단</h2>

	<table border="1">
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>가입일</td>
			<td>변경여부</td>
			<td>삭제여부</td>
		</tr>
		<c:forEach var="member" items="${member }">
			<tr>
				<td>${member.getId() }</td>
				<td>${member.getName() }</td>
				<td>${member.getTel() }</td>
				<td>${member.getRegdate() }</td>
				<td><a href="change.jsp?memberId=${member.getId()}">변경</a></td>
				<td><a href="delete.jsp?memberId=${member.getId()}">삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="main.jsp">[메인으로가기]</a>
</c:if>
</body>
</html>