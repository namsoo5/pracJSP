<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="student.Student" %>
    <%@ page import="service.ChangeStudentService" %>
    <%@ page import="service.StudentListView" %>
    <%@ page import="service.GetStudentListService" %>
    
      
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="student" class="student.Student">
	<jsp:setProperty name="student" property="*" />
</jsp:useBean>
<%
	ChangeStudentService changeService = ChangeStudentService.getInstance();
    changeService.Change(student);
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경완료</title>
</head>
<body>
정보수정완료
<a href="main.jsp">[메인으로가기]</a>
</body>
</html>