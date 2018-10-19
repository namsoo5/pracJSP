<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="inform" class="prac_exam2.Member" scope="request"/>
    <jsp:setProperty name="inform" property="*"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>회원정보</b><br>
이름: <%=inform.getname() %><br>
전화번호: <%=inform.getphone() %><br>
취미: 
<%
	String[] checkbox = inform.gethobby();
	
	for(String i : checkbox){
		out.print(i+" ");
	}
%>
</body>
</html>