<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="inform" class="prac_exam2.Member" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="prac2_pro.jsp" method="post">
	<table border="1" cellspacing="0">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone"></td>
		</tr>
		
		<tr>
			<td>취미</td>
			<td>
				<input type="checkbox" value="독서" name="hobby">독서
				<input type="checkbox" value="운동" name="hobby">운동
				<input type="checkbox" value="음악" name="hobby">음악
			</td>
		</tr>
		
		<tr>
			<td><input type="submit" value="회원가입"></td>
		</tr>
		
		
		
		
	
	
	
	
	</table>
	</form>
</body>
</html>