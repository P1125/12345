<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="result"></div>
<script type="text/javascript">
	var emp = [
					{id:10, name:"김이박", hiredate:"2020/02/02"},	
					{id:20, name:"이박김", hiredate:"3020/03/03"},	
					{id:30, name:"김김김", hiredate:"1020/01/02"},
	];
	for(i=0; i< emp.length; i++){
		document.getElementById("result").innerHTML += emp[i].name +"<br>"
	}
	for(e of emp){
		document.getElementById("result").innerHTML += e.id +"<br>"
	}
	for(c of emp){
		document.getElementById("result").innerHTML += c.hiredate +"<br>"
	}

</script>
</body>
</html>