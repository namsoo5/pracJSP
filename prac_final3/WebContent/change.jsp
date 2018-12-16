<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="student.Student"%>
<%@ page import="service.StudentListView"%>
<%@ page import="service.GetStudentListService"%>
    
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String Id = request.getParameter("id");
	GetStudentListService studentService = GetStudentListService.getInstance();
	Student viewData = studentService.getStudentListbyid(Id);
%>
<c:set var="student" value="<%=viewData%>" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보변경</title>
</head>
<body>

<c:if test="${student == null}">
등록된 회원이 없습니다.
</c:if>
<c:if test="${student != null}">

<form action="change_ex.jsp">
<table border="1">
<tr>
	<td>학번</td><td><input type="number" name="id" value="${student.id }" readonly="readonly"></td>
</tr>
<tr>
	<td>이름</td><td><input type="text" name="name" value="${student.name }"></td>
</tr>
<tr>
	<td>학과</td><td><input type="text" name="department" value="${student.department }"></td>
</tr>
<tr>
	<td>전화번호</td><td><input type="text" name="phone" value="${student.phone }"></td>
</tr>
<tr>
	<td>주소</td><td><input type="text" name="address" value="${student.address }"></td>
</tr>
</table>
<input type="submit" value="변경" style="margin-top: 20px">
</form>
</c:if>

</body>
</html>