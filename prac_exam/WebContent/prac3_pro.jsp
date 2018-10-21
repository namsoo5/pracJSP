<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("name") %>님의 정보는 다음과 같습니다.<br>
나이: <%=request.getParameter("age") %><br>
학년: <%=request.getParameter("class") %><br>
취미: <%=request.getParameter("hobby") %>
</body>
</html>