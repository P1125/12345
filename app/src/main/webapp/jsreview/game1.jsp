<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div { display: inline-block; 
	width : 100px; 
	height: 100px;
	border: 1px solid black; }
</style>

</head>
<body>
<script>
	for(i=0; i<10; i++) {
		var div = document.createElement("div");
		div.innerHTML = i;
		div.onclick = clickHandler
		document.body.appendChild(div);
	}
	function clickHandler(e) {
		console.log(e.target.innerHTML, '클릭됨')
	} // 클릭된 태그를 삭제
	
	
	//-> 모두삭제되면 모두 제거되었다고 메세지
	// document.getElementsByTagName("div") 몇개남았는지 .length붙여확인가능
	//다되면 섞어보기(난수) 순서대로없애는게임.. + 시간재기 1to50 게임
	var len = document.getElementsByTagName("div").length;
	console.log(len, ' 개');
	
	</script>
</body>
</html>