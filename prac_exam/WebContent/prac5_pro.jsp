<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="inform" class="prac_exam.Information" scope="request"/>
 <jsp:setProperty name="inform" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과페이지</title>
</head>
<body>
	<table border="1" cellspacing="0" >
		<tr>
			<td>아이디</td>
			<td><%=inform.getid() %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=inform.getpw() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty name="inform" property="name"/></td>
		</tr>
		<tr>
			<td>가입일</td>
			<td><%=inform.getdate() %></td>
		</tr> 
	</table>
</body>
</html>