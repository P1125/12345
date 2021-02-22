<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function calc2(){
	var table = document.getElementById("tbl2");
	
	//합계 저장변수 선언
	var sum = 0;
/*	var trs = table.getElementsByTagName("tr");
	for(i=0; i<trs.length-1; i++) {
		var score = trs[i].getElementsByTagName("td")[1].innerText;
		//합계 계산
			sum +=  parseInt(score);
		}
	//합계 출력
	trs[trs.length-1].getElementsByTagName("td")[1].innerText = sum;
	//trs[i]; */
	
	// rows와 cells를 이용해 모든 tr td 등 접근가능 위보다 보기편함
	for(i=0; i<table.rows.length-1; i++){
		var score = table.rows[i].cells[1].innerText;
		sum += parseInt(score);
	}
	table.rows[table.rows.length-1].cells[1].innerText = sum;
	}
	
		//console.log(score);
		
</script>
</head>
<body>
<button type="button" onclick="calc1()">계산</button>
<table  id="tbl1"  border="1">
<tbody >
	<tr><td>100</td></tr>
	<tr><td>90</td></tr>
	<tr><td>80</td></tr>
	<tr><td>100</td></tr>
	<tr><td>&nbsp;</td></tr>
</tbody>	
</table>
<button type="button" onclick="calc2()">계산</button>
<table border="1"  id="tbl2" >
	<tr><td>홍길동</td><td>100</td></tr>
	<tr><td>김기자</td><td>90</td></tr>
	<tr><td>이순신</td><td>80</td></tr>
	<tr><td>총점</td><td>&nbsp;</td></tr>
</table>
</body>
</html>