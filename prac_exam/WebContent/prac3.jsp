<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="prac3_pro.jsp" method="post">
<table border="1">
	<tr>
		<td>이름</td>
		<td >
			<input type="text" name="name">
		</td>
	</tr>
	<tr>
		<td>나이</td>
		<td >
			<input type="text" name="age">
		</td>
	</tr>
	<tr>
		<td>학년</td>
		<td >
			<input type="radio" name="class" value="1">1
			<input type="radio" name="class" value="2">2
			<input type="radio" name="class" value="3">3
			<input type="radio" name="class" value="4">4
		</td>
	</tr>
	<tr>
		<td>취미</td>
		<td >
			<select name="hobby">
				<option value="음악감상">음악감상</option>
				<option value="운동">운동</option>
				<option value="독서">독서</option>
				<option value="멍때리기">멍때리기</option>
			</select>
		</td>
	</tr>
	<tr>
		<td><input type ="submit" value="전송">
	</tr>
</table>
</form>
</body>
</html>