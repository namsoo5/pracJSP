<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="student.Student" %>
    <%
	request.setCharacterEncoding("utf-8");
	%>
    
<jsp:useBean id="member" class="student.Student">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생등록</title>
</head>
<body>


<form action="register_ex.jsp">
<table border="1">
<tr>
	<td>학번</td><td><input type="number" name="id"></td>
</tr>
<tr>
	<td>이름</td><td><input type="text" name="name"></td>
</tr>
<tr>
	<td>학과</td><td><input type="text" name="department"></td>
</tr>
<tr>
	<td>전화번호</td><td><input type="text" name="phone"></td>
</tr>
<tr>
	<td>주소</td><td><input type="text" name="address"></td>
</tr>
</table>
<input type="submit" value="등록" style="margin-top: 20px">
</form>

</body>
</html>