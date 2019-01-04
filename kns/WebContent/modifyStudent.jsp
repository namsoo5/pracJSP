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
<title>정보수정</title>
</head>
<body>

<form action="modifyStudent_ex.jsp">
<table border="1" cellspacing="0">
	<tr>
		<td style="padding-left: 10px;width: 100px">학번</td>
		<td style="padding-left: 10px"><input type="number" name="id" style="width: 300px" value="${student.id }" readonly="readonly"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">이름</td>
		<td style="padding-left: 10px"><input type="text" name="name"style="width: 300px" value="${student.name }"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">학과</td>
		<td style="padding-left: 10px"><input type="text" name="department"style="width: 300px" value="${student.department }"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">전화번호</td>
		<td style="padding-left: 10px"><input type="text" name="phone"style="width: 300px"value="${student.phone }"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">주소</td>
		<td style="padding-left: 10px"><input type="text" name="address"style="width: 300px"value="${student.address }"></td>
	</tr>
</table>
<input type="submit" value="수정" style="margin: 20px;width: 100px;height: 50px">
</form>
</body>
</html>