<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String p = request.getParameter("page");
String url=null;
if(p.equals("A"))
	url="a.jsp";
else if(p.equals("B"))
	url="b.jsp";
else if(p.equals("C"))
	url="c.jsp";
%>
<jsp:forward page="<%=url %>"/>
</body>
</html>