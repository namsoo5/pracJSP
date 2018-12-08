<%@page import="java.sql.Timestamp"%>
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
    WriteMemberService writeService =new WriteMemberService();
    member.setRegdate(new Timestamp(System.currentTimeMillis()));
    try{
    writeService.Write(member);
    }catch(SQLException e){%>
    <jsp:forward page="error.jsp"/>
 	<%
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입처리</title>
</head>
<body>
회원 등록 하였습니다.<br>
<a href="main.jsp">[메인으로가기]</a>
</body>
</html>