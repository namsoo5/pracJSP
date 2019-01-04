<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ page import="student.Student" %>
    <%@ page import="service.ModifyStudentService" %>
    <%@ page import="service.StudentListView" %>
    <%@ page import="service.GetStudentListService" %>
    
      
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="student" class="student.Student">
	<jsp:setProperty name="student" property="*" />
</jsp:useBean>
<%
	ModifyStudentService modifyService = ModifyStudentService.getInstance();
    modifyService.Change(student);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경완료</title>
</head>
<body>
정보수정완료
<jsp:forward page="main.jsp"></jsp:forward>
</body>
</html>