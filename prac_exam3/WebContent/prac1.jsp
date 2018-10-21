<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="inform" class="prac_exam3.Member" scope ="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "prac1_pro.jsp" method="post">
		<table border="1", cellspacing="0">
			<tr>
				<td>이름</td>
				<td width=200><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td width=200><input type="text" name="number"></td>
			</tr>
			<tr>
				<td>취미</td>
				<td width=200>
					<input type="checkbox" name="hobby" value="독서">독서
					<input type="checkbox" name="hobby" value="운동">운동
					<input type="checkbox" name="hobby" value="음악">음악
				</td>
			</tr>
			<tr>
				<td  align="center" colspan="2"><input type="submit"  value="회원가입" ></td>
		</table>
	</form>

</body>
</html>