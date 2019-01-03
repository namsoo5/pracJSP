<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
     <jsp:useBean id="member" class="kns.Member" scope="request"/>
     <jsp:setProperty name="member" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
<table border="1" cellspacing="0">
	<tr>
		<td>아이디</td>
		<td><%=member.getId() %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=member.getPassword() %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=member.getName() %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%=member.getTel() %></td>
	</tr>
	<tr>
		<td>가입일</td>
		<td><%=member.getDate() %></td>
	</tr>
</table>

</body>
</html>