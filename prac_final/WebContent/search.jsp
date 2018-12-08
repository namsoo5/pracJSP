<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="service.GetMemberListService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
</head>
<body>
<h2>검색할 회원이름을 입력하세요</h2>
<form action="search_ex.jsp" method="post">
이름:<input type="text" name="name"/><input type="submit" value="검색"/>
</form>
</body>
</html>