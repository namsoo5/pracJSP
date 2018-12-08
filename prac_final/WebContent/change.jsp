<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="member.Member" %>
 <%@ page import="service.GetMemberListService" %>
 
     
     <% String memberId = request.getParameter("memberId").toString();
    	GetMemberListService memberservice = new GetMemberListService();
    	Member memberlist = new Member();
    	memberlist = memberservice.getMemberInputId(memberId);
      %>
      <c:set var="member" value="<%=memberlist %>"/>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경</title>
</head>
<body>
<form action="change_ex.jsp" method="post">
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" value="${member.getId()}" readonly="readonly"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" value="${member.getName()}"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="tel" value="${member.getTel()}"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="변경"></td>
	</tr>
</table>
</form>
</body>
</html>