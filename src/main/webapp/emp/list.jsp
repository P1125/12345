<%@page import="java.util.ArrayList"%>
<%@page import="emp.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head><title>list.jsp</title>
</head>
<body>
<c:forEach items="${list }" var="emp">  <!--물어본것 다시확인하기! for(EmpVO emp : list ) 확장포문에선 list에있는 EmpVO를 emp변수선언해야하지만 jstl은 list를 emp변수선언하면 알아서해준다--> 
	${emp.first_name }${emp.last_name }
	${emp.salary }
	<fmt:formatDate value="${emp.hire_date}" pattern="yyyy-mm"/><br>
										<!--  dateStyle="long" -->
	
	<br>
</c:forEach>
<my:login/>
이름 : <%= ((ArrayList<EmpVO>)request.getAttribute("list")).get(0).getFirst_name() %>
<hr>
이름 : ${requestScope.list[0].first_name} 
<hr>
컨텍스트 패스(어플이름) : ${pageContext.request.contextPath }
<hr>
<%= request.getHeader("User-Agent") %>
<br>
${header["User-Agent"] }
</body>
</html>