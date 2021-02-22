<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
<script>
function validateForm() {
	  var x = document.forms["myForm"]["fname"].value;
	  if (x == "") {
	    alert("Name must be filled out");
	    return false;
	  }
	  // value, selectedIndex
	  //var job = documnet.fomrs["myForm"]["job"].value;
	  // var job = document.myForms.job.value; // <-제일많이씀
	  //  var job = document.fomrs[0].elements[1].value; [1]에 idx가들어가든 job이들어가든 상관없음
 	 // var job = document.getElementsByName("job")[0].value
 	 var job = document.myForm.job.selectedIndex;
	  if( job <= 0) { // 아무것도선택안할때 -1 선택할땐 0부터시작
		  alert("job must be select");
		 return false;
	  }
	  //체크박스 과제   
	  //구글링 - 체크된 갯수가 무조건 하나이상인지 체크하기. (for문) 카운트했을때 0보다 커야한다.
	  
	  document.forms["myForm"].submit();
	}
</script>
</head>
<body>
<form name="myForm" action="action_page.jsp"  method="post">
Name: <input type="text" name="fname">

<select name="job">
	<option value="">선택</option>
	<option value="dgn">디자이너</option>
	<option value="pgm">프로그래머</option>
</select><br>
취미             
<input type="checkbox" name="hobby" value="read">독서
<input type="checkbox" name="hobby" value="jog">조깅<br>
<button type="button" onclick="validateForm()">등록</button>
</form>
</body>
</html>