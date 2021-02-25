<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOption.jsp</title>
</head>
<script>
function addFruit(){
	//input tag값을 select 의 option tag만들어 추가하기
	var op = document.createElement("option");
	
	//순서대로 내려가기, clear후에 다시 돌면 
//	op.value = ""
	op.innerHTML = document.getElementById("fruit").value 
    document.getElementById("list").add(op)
    
	var table = document.getElementById("tbl");
	var row = table.insertRow();
	var cell = row.insertCell();
	cell.innerText = document.getElementById("fruit").value ;
	
	//input tag는 claer
	document.getElementById("fruit").value = "clear";

}

	
	
	//table.insertrow();
	//row = table.inserRow();
	//cell = row.insertCell();
	//cell.innerText = "abcd";

</script>
<body>
<input id="fruit"><button type="button" onclick="addFruit()">등록</button>
<select id="list" size="10" ></select>
<table id="tbl" border='1'></table>
</body>
</html>