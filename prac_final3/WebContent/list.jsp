<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="service.GetStudentListService" %>
    <%@ page import="service.StudentListView" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <%
    String pageNumberStr = request.getParameter("page");
	int pageNumber = 1;
	if (pageNumberStr != null) {
		pageNumber = Integer.parseInt(pageNumberStr);
	}

	GetStudentListService memberListService = 
	GetStudentListService.getInstance();
	StudentListView viewData = 
	memberListService.getStudentList(pageNumber);
    %>
    
<c:set var="viewData" value="<%= viewData %>"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생목록</title>
</head>
<body>
<table border="1" width="100%">
<tr>
	<td>학번</td>
	<td>이름</td>
	<td>학과</td>
	<td>전화번호</td>
	<td>주소</td>
	<td>변경여부</td>
	<td>삭제여부</td>
</tr>
<c:forEach var="member" items="${viewData.studentList }">
<tr>
	<td>${member.id}</td>
	<td>${member.name}</td>
	<td>${member.department}</td>
	<td>${member.phone}</td>
	<td>${member.address}</td>
	<td><a href="change.jsp?id=${member.id}">변경</a></td>
	<td><a href="delete.jsp?id=${member.id}">삭제</a></td>
</tr>
</c:forEach>
</table>


<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
</c:forEach>
<a href="main.jsp">[메인으로 가기]</a> 

</body>
</html>