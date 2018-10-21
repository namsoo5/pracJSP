<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="inform" class="prac_exam3.Member" scope="request"/>
<jsp:setProperty name="inform" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>회원정보</b><br>
이름: <%=inform.getName() %><br>
전화번호: <%=inform.getNumber()%><br>
취미: 
<%String[] s= inform.getHobby();
for(String a : s)
{
	out.print(a+" ");
}
%>
</body>
</html>