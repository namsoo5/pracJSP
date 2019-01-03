<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실행 페이지</title>
</head>
<body>
당신이 가능한 외국어는 
<%
String[] s = request.getParameterValues("lang");
for(String a : s){
	out.print(a+" ");
}
%>입니다.

</body>
</html>