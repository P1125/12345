<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>
</head>
<body>
<div id="result"></div>
<script type="text/javascript">
//	var empList =[ 	{id:100, name:"scott", hiredate:"2020/01/01"},
//			   		{id:102, name:"홍길", hiredate:"2020/01/01"},
//				    {id:103, name:"김유", hiredate:"2020/01/01"}
//	];
	//사원 이름 div에 출력하기
//	div tag 찾고                       유형변경(속성)  변수명.연산자(필드명) 
	//document.getElementById("result").innerHTML = emp.name;

/*	for(i=0; i< empList.length; i++){ // length 배열..ㅠ..
		document.getElementById("result").innerHTML += empList[i].name +"<br>";	
	}								//br태그를 적용하면 HTML사용 empList의 []배열에 i를 담는다. 거기서 뽑을것은 name
	for(E of empList){ // 확장자 빼야한다. 앞은 변수이름 뭘넣든 상관없다.
		document.getElementById("result").innerHTML += E.name + "<br>";}

	var depts = [	{department_id:10, department_name:"Administration", manager_id:200,  location_id:1700},
			   		{department_id:20, department_name:"Marketing", manager_id:201,  location_id:1800}  //객체배열 만들기
	]; //<- json 
	*/	
//	var member = {name : "hong", hobbys: ["독서", "달리기"] }
			//	첫번째 취미출력하기
//	document.getElementById("result").innerHTML += "<br>취미:"  + member.hobbys[0] ";	
	
	var members = [ {name : "hong", hobbys : ["독서", "달리기"] },
					{name : "Kong", hobbys : ["스키", "달리기"] }
		];
	document.getElementById("result").innerHTML += "<br>두번째 회원취미:"  + member[1].hobbys[0] ";

	
//부서정보
	
	
</script>




</body>
</html>