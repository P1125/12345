<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8">
<title>jstl.jsp</title>
</head>
<body>
<c:forTokens items="s,r,a" delims="," var="hobby">
	${hobby} <br>
</c:forTokens> 
<%-- int sum=0;
	for(int i=0; i<10; i++){
		sum += i;
	}
	out.print(sum); jstl태그로 변경하기
--%>   <!-- for(EmpVO emp : list ) -->
<!-- 위 for문과 같다. -->
<c:set var="sum" value="0" />
<c:forEach  var="i" begin="1" end="10" step="1" varStatus="s"> <!-- step이 2로변경되면 1 3 5 7  3이면 1 4 7 10 -->
	${s.index },
	<c:set var="sum" value="${sum+i }" />
</c:forEach>

${sum}
</body>
</html>