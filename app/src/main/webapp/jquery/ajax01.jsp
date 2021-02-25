<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax01</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn").on("click", function(){
			var param = "userid=" + $("#userid").val()	 // = 을붙이는건 파람		
			var url = "../FindName"; // param을 호출하는 servlet
			//1. load함수 제일쉬운거..
			//$("#demo").load(url + "?" + param);	//응답한 값을 demo div에 넣어줘라					
			//2. post, get  // get( url [, data ] [, success ] [, dataType ] )
		//	$.get(url + "?" + param, function(response){ // 첫번째 응답 리스폰스를 받아와서 demo div에 출력한다
			param = {userid :  $("#userid").val(), dept : "개발" }//?userid = aaa&dept=개발로 자동으로 쿼리넘겨줌	 // jquery는 string도 가능하지만 obj타입도 가능하다 . 
			$.post(url,param, function(response){ // get, post 사용법이 동일하다.
				$("#demo").append("post:" + response); // get으로 받아온다  reponse자리에 r이들어가도상관없음 변수라서.
			}); // 무조건 비동기이다.
			//3. ajax 동기식으로 사용가능 옵션을 세세하게 넣을수 있다.
			$.ajax(url, {
				async : true,  // async 제어 가능 false로하고 올리면 비동기
				success :  function(response){ //위 콜백함수와 똑같다. success했을때 처리할것
							$("#demo").append("ajax:" + response); 
							}, 
		//		error : function(){},
		//		complete : function(){},
				data : param // 보낼 데이터
			});
		});
	});
</script>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<input id="userid">
<button type="button" id="btn">Change Content</button>


</body>
</html>