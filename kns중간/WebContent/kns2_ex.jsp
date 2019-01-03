<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실행페이지</title>
</head>
<body>
연산 결과<br>
<%
float n1 = Float.parseFloat(request.getParameter("n1"));
float n2 = Float.parseFloat(request.getParameter("n2"));
String s = request.getParameter("calcul");
float result=0;
switch(s){
	case "+":
		result=n1+n2;
		break;
	case "-":
		result=n1-n2;
		break;
	case "*":
		result=n1*n2;
		break;
	case "/":
		result=n1/n2;
		break;
}
%>
<%=n1 %><%=s %><%=n2%> = <%=result %>
</body>
</html>