<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
<%=request.getParameter("name") %>이 좋아하는 색깔은 
<%=request.getParameter("color") %>이고 취미는 
<%=request.getAttribute("sports") %>입니다.
</body>
</html>