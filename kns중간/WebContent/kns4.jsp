<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="member" class="kns.Member" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작페이지</title>
</head>
<body>
<form action="kns4_ex.jsp">
<table border="1" cellspacing="0">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="tel"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="회원 가입"></td>
	</tr>
</table>
</form>
</body>
</html>