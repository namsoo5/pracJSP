<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="inform" class="prac_exam3.Information"/>
    <jsp:setProperty name="inform" property="*"/>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellspacing="0">
		<tr>
			<td>아이디</td>
			<td><%=inform.getId() %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=inform.getPw() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=inform.getName() %></td>
		</tr>
		<tr>
			<td>가입일</td>
			<td><%=inform.getDate() %></td>
		</tr>
	</table>

</body>
</html>