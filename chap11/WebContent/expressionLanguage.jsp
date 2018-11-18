<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${var = [1,2,3,4] ; ""}
${var[1]}
<br>
${lst = [1,2,3,4,5]; ''}
stream().sum() > ${lst.stream().sum() }   <%--stream()이용,  이어지는연산에 원소를 차례대로 제공 --%>
<br>
${list = lst.stream().filter(x->x%2==0).toList(); ''}  <%--filter 람다식이true인 원소를 갖는 새로운스트림생성, toList 결과스트림에서 새로운list생성--%>
filter > ${list }
<br>
${mlist = lst.stream().map(x->x*x).toList(); ''}  <%--map 람다식파라미터, 파라미터를 변환한 새로운값 리턴하는 스트림생성--%>
map > ${mlist }
<br>
val_오름차순 > ${val =[20,1,28,17,11,9]; val.stream().sorted().toList() }  <%-- sorted() 오름차순정렬 --%>
<br>
vals_내림차순 > ${vals = val.stream().sorted((x1,x2) -> x1<x2 ? 1 : -1).toList() }  <%-- 내림차순 --%>
<br>
limit(3) > ${vals.stream().sorted().limit(3).toList() } <%-- limit 지정한 개수만큼 스트림생성 --%>
<br>
리스트형 >  ${vals.stream().toList() }
<br>
배열형 >  ${vals.stream().toArray() }
<br>
vals.stream().count() > ${vals.stream().count() }
<br>
get > ${[1,2,3].stream().max().get() } <%-- 값존재할경우 값리턴, 존재안할경우 ELException발생 --%> <br>
<%-- ${[].stream().min().get() }--%> <%-- 에러남 값이없을수도있다면 get대신 orElse사용하거나 orElseGet사용 --%>
orElse > ${[].stream().min().orElse('없음') } <%-- 값이 존재하면 값출력, 없으면 괄호안의 값 출력 --%> <br>
orElseGet > ${[].stream().min().orElseGet(()-> -1) } <%--값없을때 람다식실행 -1출력 --%><br>
${minvalue = '--';'' }
ifPresent > ${[1,2,3].stream().min().ifPresent(x->(minvalue = x)) } <%--존재하면 람다식 실행 --%>
${minvalue }
<br>
sum > ${[1,2,3,4,5].stream().sum() } <br>
average > ${[1,2,3,4].stream().average().get() }<br>
average > ${[].stream().average().orElse('값이존재하지않습니다.') }   <%--리턴값으로 Optional타입을 리턴하므로 값을구할때는 get이나 orElse등을 이용해야함 --%>
<br>
예시:[1,2,3,4,5] 각원소는 v로표시 ${lst = [1,2,3,4,5];'' }<br>
anyMatch() > ${matchOpt = lst.stream().anyMatch(v -> v>4);'' }
${matchOpt.orElse(false) } , 값이하나라도 있는조건이면 true<br>  <%-- matchOpt.get()은 값이없을때 에러가나므로 orElse가 좋음 --%>

allMatch() > ${matchOpt = lst.stream().allMatch(v -> v>4);'' }
${matchOpt.orElse(false) } , 모든v가 모든조건을충족하면true<br>

noneMatch() > ${matchOpt = lst.stream().noneMatch(v -> v>4);'' }
${matchOpt.orElse(false) } , 모든v가 모든조건을충족하지않으면 true 
<br>


</body>
</html>