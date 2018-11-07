<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인검사</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length>0)
{
	boolean exist=false;
    for(int i=0; i<cookies.length; i++ )
    {
    	if(cookies[i].getName().equals("AUTH"))
    	{
    		exist=true;
    	%>
    		아이디 "<%=URLDecoder.decode(cookies[i].getValue(), "utf-8")%>"로 로그인 상태
    	<%} 
    }
    if(!exist){
    	out.print("로그인하지 않은 상태");
    }
}


%>





<%--
 <%
boolean exist =false;
int index=-1;
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length>0)
{
    for(int i=0; i<cookies.length; i++ )
    {
    	if(cookies[i].getName().equals("AUTH"))
    	{
    		exist = true;
    		index = i;
    	}
    }
}
if(exist)
{
	아이디 "<%=URLDecoder.decode(cookies[index].getValue(), "utf-8")%>"로 로그인 상태
<%}else {%>
로그인하지않은상태
<%}
	%>
	 --%>
</body>
</html>