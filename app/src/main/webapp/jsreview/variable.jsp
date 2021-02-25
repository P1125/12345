<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>variable.jsp</title>
<script type="text/javascript">
		"use strict"; // 무조건 변수선언
	var v1 = 10; //전역변수 의미로서 어디에서나 다 사용가능
	function f1(){
	    {
		var i1 = 10;
	    // i1 = 10 전역변수
		//var i1 = 10   var를 붙이면 지역변수 빼면 전역변수
	    //let i1 = 10   블록변수
	    }
	    v1 = 20;
		
	    console.log("i1")
	}
	function f2(){
		v1 = 30;
	
		console.log(i1);
	}
</script>
</head>
<body>

</body>
</html>