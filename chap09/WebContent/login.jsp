<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.net.URLEncoder" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    if(id.equals(password)){
    	//id와 pw가 같으면 로그인성공
    	Cookie cookie1 = new Cookie("AUTH", URLEncoder.encode(id,"utf-8"));
    	cookie1.setPath("/");
    	cookie1.setMaxAge(-1);
    	response.addCookie(cookie1);
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인성공</title>
</head>
<body>
로그인에 성공해따!
</body>
<%
}else { //로그인실패시
%>
<script>
alert("로그인에 실패해따");
history.go(-1);
</script>
<%
} 
%>

</html>