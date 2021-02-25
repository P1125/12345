<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$("#btnAdd").bind("click", function(){ // 직접 이벤트를 해당 태그에 
		$("#result").append($("<li>").html("jsp!")
									 .css("backgroundColor", "red") 
									 .attr("id", "book")  //태그 속성지정 attr
									 .prop("alt", "text")
									 .data("num", "10") ); //눈에 보이지않게 태그를 저장할때
	});
	$("ul").bind("click", "li", function(){ //그룹이벤트() 이벤트권한을 위임한다. 부모태그에 대신 걸어줌
		$(event.target).remove();  //li태그를 가르킨다. spring은 지워진다. li tag걸어서
		console.log(this)
//	$("li").bind("click", function(){
//		$(this).remove()  // spring은 지워진다. li tag걸어서
	});
});

//  $(function(){})   = $(doucment).bind("ready", function(){ document가 ready되면
	


// 밑과 같은내용으로 제이쿼리로 함   페이지 로드 이벤트 
/*

window.addEventListener("load", function(event){
	document.getElementsByTagName("ul")[0].addEventListener("click",function(){
	/*	this.remove(); this는  
	event.target.parentNode.removeChild(event.target);		
	}); 
	
	
	
	
	document.getElementById("btnAdd")
				.addEventListener("click",function(){
				//li tag 생성
				var li = document.createElement("li");
				li.innerHTML = "자바"
					document.getElementById("result").appendChild(li);
				});			 
});
 */

</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
		<ul id="result">
			<li>스프링</li>
		</ul>
</body>
</html>