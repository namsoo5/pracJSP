<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("name") %>님이 좋아하는 스포츠는
 "<b><font size="6"><%=request.getParameter("sports")%></font></b>" 입니다.
</body>
</html>