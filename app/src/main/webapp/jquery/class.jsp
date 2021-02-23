<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
	.menu { border : 1px solid red; background-color:gray; }
	.active {background-color: yellowgreen;}
</style>
<script>
$(function(){
	
	//li태그에 click하면 태그내용 alert
	$("li.menu").on("click", function(){ 
		//alert($(this).html() );  //두가지방법 제이쿼리객체면 제이쿼리함수사용
		//alert(this.innerHTML );  // 일반 자바스크립트 dom 객체
		$("li.menu").removeClass("active");
		$(this).addClass("active");
	
		
	});
	
});
</script>
</head>
<body>
<ul>
	<li class="menu" data-num="1">게시판</li>
	<li class="menu"data-num="2">회원가입</li>
	<li class="menu active" data-num="3">로그인</li>
	<li class="menu" data-num="4">QnA</li>
</ul>
</body>
</html>