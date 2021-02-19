<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<style></style>

</head>
<body>
	<h2>Hello World!</h2>
	<div id="result">이벤트 테스트</div>
	<div id="result2">테스트2</div>
	<script>
		var div = document.getElementById("result");
		var div2 = document.getElementById("result2");
		
		//type			handler  e가 이벤트객체  이벤트 발생경고
//		div.onclick = function(e) {
//			console.log(e.clientX, e.clientY); //어떤속성이 있는지 확인


		div.onclick = clickHandler;
		div2.onclick = clickHandler;
						// e: event 객체(이벤트와 관련된 모든 정보를 다 담고 있다)
		function clickHandler(e){
			 // 이벤트가 발생한 대상 태그
			console.log(e.target.id, e.clientX, e.clientY); 
			
		}
	</script>

</body>
</html>
