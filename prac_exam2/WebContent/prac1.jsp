<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>사칙연산</b><br>
<form action= "prac1_pro.jsp" method="post">
<input type="text" name="first" size=10>
<select name="calcul">
	<option value="+">+</option>
	<option value="-">-</option>
	<option value="*">*</option>
	<option value="/">/</option>
</select>
<input type="text" name="second" size=10>
<input type="submit" value="=">
</form>
</body>
</html>