<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="name" value="김남수" scope="request"/>
<c:set var="name1" scope="request">남수</c:set>    <%-- c:set태그를이용한 el변수설정 --%>
${name }, ${name1 }<br>
remove후<br>
<c:remove var="name1" scope="request"/>			<%--scope영역미지정시 이름같은 모든 변수삭제 --%>
${name }, ${name1 } <br>

<c:if test="${ name1==null}" var="testresult">   <%-- test결과값 t,f가 var의 변수에 저장됌 --%>
name1은 삭제되었습니까?  ${testresult }
</c:if>
<br>

1~100중 하나를 선택하세요
${num = param.num}  <%-- get방식으로 파라미터받아옴 --%>

<br>
<ul>
<c:choose>   <%-- switch --%>
	<c:when test="${num >50}">   <%--case --%>
		<li>입력한 값이 50보다큽니다
	</c:when>
	<c:when test="${num >25}">
		<li>입력한 값이 50보다작고 25보다큽니다.
	</c:when>
	<c:when test="${num >1}">
		<li>입력한 값이 25보다작고 1보다큽니다
	</c:when>
	<c:otherwise>    <%--default --%>
		<li>범위가 초과되었습니다.
	</c:otherwise>
</c:choose>
</ul>
<br>
보기${list = [2,4,6,7,9] }<br>
<c:forEach var="i" begin="1" end="10" step="2">     <%-- foreach문 --%>
 ${i },
 </c:forEach> 
 <br>
<c:forEach var="l" items="${list }" begin="0" end="4" step="2" varStatus="indexval">
 ${indexval.count }번째 for문: ${l }는 ${indexval.index }번째 index입니다.<br>
 </c:forEach> 
<br>

<c:forTokens var="token" items="red,green/blue" delims=",/">    <%-- fortokens --%>
${token }은
<c:if test="${token=='red' }">
빨강색이다.
</c:if>
<c:if test="${token=='green' }">
녹색이다.
</c:if>
<c:if test="${token=='blue' }">
파랑색이다.
</c:if>
</c:forTokens>
<br>

<c:url value="https://www.naver.com" var="urlsave" scope="request">  <%-- urlsave변수지정시 화면에출력안됌 --%>
	<c:param name="name" value="김남수"/>
</c:url><br>
${urlsave }<br>
<c:url value="/jstlTest.jsp"/><br>
<c:url value="./jstlTest.jsp"/><br>

<%-- <c:redirect url="/expressionLanguage.jsp" context="/chap11">
		<c:param name="name" value="남수"/>
	 </c:redirect>

  context미지정시 같은 컨텍스트경로 --%>
${outval = "abc>1234<535&15";'' }
cout > <c:out value="${ outval}" escapeXml="ture"/> <br>
<c:catch var="exceptionName"> <%--발생된 익셉션 저장하는 변수 --%>
${[].steam().min().get()}  <%-- 에러발생 --%>
</c:catch>
<c:if test="${exceptionName != null}">
c:catch > ${exceptionName }발생
</c:if>
<br>




</body>
</html>