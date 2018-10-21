<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String sports= "eSports";
	String name = "홍길동";

%>
<jsp:forward page = "prac4_pro.jsp">
	<jsp:param name="name" value="<%=name %>"/>
	<jsp:param name="sports" value="<%=sports %>"/>
</jsp:forward>
</body>
</html>