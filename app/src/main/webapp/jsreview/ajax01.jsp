<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax01</title>
</head>
<body>

<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<input id="userid">
<button type="button" onclick="loadDoc()">Change Content</button>


<script>
function loadDoc() {
	//1.XHR객체 생성
  var xhttp = new XMLHttpRequest();
	//2. 콜백함수
  xhttp.onreadystatechange = function() {
    if (this.readyState < 4 ){
    	  document.getElementById("demo").innerHTML = "loading.."
	}
    	else if (this.readyState == 4 ){ // 서버로부터 응답 완료
    		if(this.status == 200){ //성공
			    document.getElementById("demo").innerHTML =  this.responseText; //<-이게 달라진다 responseXML이랑 두가지가있다.
    		}else{
    			document.getElementById("demo").innerHTML = this.status + "error"; //실패 
    		}
      //서버에서 넘겨준 결과가 demo라는 태그에 innerhtml로출력
    }
  };
  //3. 요청준비(url) server url만 잘적어주면됨
  var param = "userid=" + document.getElementById("userid").value;
  xhttp.open("POST", "../FindName?"); 
  //xhttp.open("GET", "../FindName?" + param); //세번째 인수 : 비동기여부 (true)
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  //기본이 true으로하면 비동기  false는 동기식 
  //4. 요청 시작 send
  xhttp.send(param);
  document.getElementById("demo").innerHTML += "ajax send";//먼저실행 비동기는 백그라운드로 보내놓는다
}
</script>
</body>
</html>