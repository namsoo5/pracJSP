<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="student.Student" %>
     <%@ page import="service.RegisterStudentService" %>
    
    <%
	request.setCharacterEncoding("utf-8");
	%>
    
<jsp:useBean id="student" class="student.Student">
	<jsp:setProperty name="student" property="*" />
</jsp:useBean>
<%
	RegisterStudentService registerservice = RegisterStudentService.getInstance();
	registerservice.write(student);
%>
		    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록완료</title>
</head>
<body>
등록 하였습니다.
<jsp:forward page="main.jsp"></jsp:forward>
</body>
</html>