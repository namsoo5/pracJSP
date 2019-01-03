<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작페이지</title>
</head>
<body>
사칙연산<br>
<form action="kns2_ex.jsp" method="post">
<input type="text" name="n1">
<select name="calcul">
	<option value="+">+</option>
	<option value="-">-</option>
	<option value="*">*</option>
	<option value="/">/</option>
</select>
<input type="text" name="n2">
<input type="submit" value="=">
</form>
</body>
</html>