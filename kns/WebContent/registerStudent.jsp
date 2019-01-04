<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="student.Student" %>
    <%
	request.setCharacterEncoding("utf-8");
	%>
    
<jsp:useBean id="student" class="student.Student">
	<jsp:setProperty name="student" property="*" />
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생등록</title>
</head>
<body>


<form action="registerStudent_ex.jsp">
<table border="1" cellspacing="0">
	<tr>
		<td style="padding-left: 10px; width: 100px">학번</td><td><input type="number" name="id" style="width: 250px"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">이름</td><td><input type="text" name="name"style="width: 250px"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">학과</td><td><input type="text" name="department"style="width: 250px"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">전화번호</td><td><input type="text" name="phone"style="width: 250px"></td>
	</tr>
	<tr>
		<td style="padding-left: 10px">주소</td><td><input type="text" name="address"style="width: 250px"></td>
	</tr>
</table>
<input type="submit" value="등록" style="margin: 20px;width: 100px;height: 50px">


</form>
</body>
</html>