<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>임의의 값을 임의의 횟수로 곱하기</h2>
<%
int n1 = Integer.parseInt(request.getParameter("value"));
int n2 = Integer.parseInt(request.getParameter("num"));
int result = n1*n2;
 %>
 결과 : <%=result %>
</body>
</html>