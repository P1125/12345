<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈</title>
<script type="text/javascript">
	function goPage(page) {
		location.href = '${pageContext.request.contextPath}/paging.do?pageNo=' +page;
	}
</script>
<style>
.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border-radius: 5px;
}

.pagination a:hover:not(.active) {
  background-color: #ddd;
  border-radius: 5px;
}
* {

    margin: 0;

    padding: 0;

}



body {

    font: 17px 'Nanum Gothic', sans-serif;

}



a {

    text-decoration: none;

    color: #404040;

}



li {

    list-style: none;

}



/*BODY*/

#notice {

    width: 500px;

    margin: 0 auto;

    box-sizing: border-box;

    /*outline: 1px dashed black;*/

}



#notice h1 {

    font-size: 25px;

    text-align: center;

    margin: 10px 180px;

    padding: 10px;

    color: #fff;

    background: #007AAE;

    border-radius: 30px;

}



#notice ul {

    width: 100%;

}



#notice ul li {

    line-height: 30px; /*li 세로 간격*/

    padding-left: 20px;

}



#notice ul li:first-child {

    border-top: 2px solid #6a6a6a;

    border-bottom: 2px solid #6a6a6a;

    padding-left: 150px;

}



#notice ul li:last-child {

    border-bottom: 1px solid #000;

}



#notice ul li:nth-child(2n) { 

    background: #94D8F6;

    border-radius: 20px;

}



#notice ul li span {

    display: inline-block;

    float: right;

    width: 150px;

    text-align: center;

}



</style>
</head>
<jsp:include page="../common/menu.jsp"></jsp:include>
<body>
<div align="center">
	<div id="notice">
	<h1>List</h1>
	<ul>
        <li>내용<span>SALARY</span></li>
		<c:forEach var="vo" items="${list }">
			<li><a href="#">id:${vo.employeeId } / ${vo.firstName } / ${vo.lastName }</a><span>${vo.salary }</span></li>
		</c:forEach>
	</ul>
	</div>
	<jsp:include page="../common/paging.jsp" />
	
</div>
</body>
</html>