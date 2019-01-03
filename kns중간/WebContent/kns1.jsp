<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작페이지</title>
</head>
<body>
가능한 외국어를 모두 선택하시오.<br>
<form action="kns1_ex.jsp" method="post">
<input type="checkbox" name="lang" value="영어">영어
<input type="checkbox" name="lang" value="일본어">일본어
<input type="checkbox" name="lang" value="중국어">중국어
<input type="checkbox" name="lang" value="영어">독일어<br>
<input type="submit" value="확인">
</form>
</body>
</html>