<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import ="service.WriteMemberService" %>
    <%@ page import="member.Member" %>
    <%@ page  import=" java.sql.*" %>
    
    <%
   		request.setCharacterEncoding("utf-8");
    %>
    
    <jsp:useBean id="member" class="member.Member">
    <jsp:setProperty name="member" property="*"/>
    </jsp:useBean>
    
    <%
   	 	
    	WriteMemberService modifyservice = new WriteMemberService();
    	modifyservice.Modify(member);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경처리</title>
</head>
<body>
회원정보 수정하였습니다.<br>
<a href="main.jsp">[메인으로가기]</a>
</body>
</html>