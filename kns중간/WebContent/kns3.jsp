<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name = "홍길동";
String color="빨강";
request.setAttribute("sports", "축구");
%>
<jsp:forward page="result.jsp">
	<jsp:param name="name" value="<%=name %>"/>
	<jsp:param name="color" value="<%=color %>"/>
</jsp:forward>
</body>
</html>