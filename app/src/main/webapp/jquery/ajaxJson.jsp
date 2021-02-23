<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxjson.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn1").on("click",function(){
		
		//1.post : (url[,data] [,success] [,dataType])  dataType이 json인지 find인지 구분
		$.post("../JsonServ", function(obj){
	//		var obj = JSON.parse(response);  // json을 불럿을때  배열로받아온다    일일이 해줄필요가없다.. 파싱해주기때문에
			$("#demo").append(obj[0]);
		}, "json")		
		
		//2.ajax  꼭 알아두기
		$.ajax({
			url : "../JsonServ", 
			success : function(obj){ $("#demo").append(obj[1]); }, 
			dataType : "json"
		});
			
		})
		$("#btn2").on("click",function(){
		//버튼2 클릭시 FindMember 서버 결과에서 name과 첫번째 취미 출력
		$.ajax({
			url : "../FindMember",                   // {}는 .로 시작  배열은 0부터 시작한다.
			success : function(obj){ $("#demo").append(obj.name).append(obj.hobbys[0]); }, 
			dataType : "json" // jquery함수가 알아서 다 넘겨준다.
		
		});
	});
});
</script>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
	<button type="button" id="btn1">JsonServ</button>
	<button type="button" id="btn2">FindMember</button>
</body>
</html>