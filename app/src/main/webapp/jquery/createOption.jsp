<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOption.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	//버튼 클릭하면 input값으로 option태그 생성추가
//	var f = $("#fruit").val()
//	$("<option>").html(f)
// var op =	$("<option>").html( $("#fruit").val() ) // 위와같다
//	$("#list").append( $("<option>").html( $("#fruit").val() ));
	
	$("#btnAdd").on("click", function(){
		var op = $("<option>").html( $("#fruit").val() );
		$("#list").append(op.clone());
		$("#tbl").append(op);	
	
//	$("#btnAdd").bind("click", function(){
// 내가하고 망한거		$("#input").append($("#option").clone() );
	});
	
});


</script>
</head>
<body>
<input id="fruit">
<button type="button"id="btnAdd">등록</button>
<select id="list" size="10" ></select>
<table id="tbl" border='1'></table>
</body>
</html>