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
String p = request.getParameter("page");
String urls=null;
if(p.equals("A"))
	urls = "a.jsp";
else if(p.equals("B"))
	urls = "b.jsp";
%>
<jsp:forward page="<%=urls%>"/>

</body>
</html>