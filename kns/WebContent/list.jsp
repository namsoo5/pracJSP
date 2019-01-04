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
<title>전체학생조회</title>
</head>
<body>
<c:if test="${viewData.isEmpty()}">
어떤 학생도 등록 되어있지 않습니다.
</c:if>
<c:if test="${!viewData.isEmpty()}">
<table border="1" width="100%" cellspacing="0" >
<tr>
	<td style="padding-left: 10px">학번</td>
	<td style="padding-left: 10px">이름</td>
	<td style="padding-left: 10px">학과</td>
	<td style="padding-left: 10px">전화번호</td>
	<td style="padding-left: 10px">주소</td>
	<td style="padding-left: 10px">수정여부</td>
	<td style="padding-left: 10px">삭제여부</td>
</tr>
<c:forEach var="student" items="${viewData.studentList }">
<tr>
	<td style="padding-left: 10px">${student.id}</td>
	<td style="padding-left: 10px">${student.name}</td>
	<td style="padding-left: 10px">${student.department}</td>
	<td style="padding-left: 10px">${student.phone}</td>
	<td style="padding-left: 10px">${student.address}</td>
	<td style="padding-left: 10px"><a href="modifyStudent.jsp?id=${student.id}">수정하기</a></td>
	<td style="padding-left: 10px"><a href="deleteStudent.jsp?id=${student.id}">삭제하기</a></td>
</tr>
</c:forEach>
</table>

<p align="center">
<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}" >
<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
</c:forEach>
</p>
</c:if>
</body>
</html>