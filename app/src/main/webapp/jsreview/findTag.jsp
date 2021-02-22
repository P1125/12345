<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findTag.jsp</title>

<script>

//모든 이미지의 크기를 100px 만큼 감소
function toSm(){
	var imgs = document.getElementsByTagName("img");
	
	for(i=0; i< imgs.length ; i++){ // 숫자가들어가야한다. 배열인것 생각하기.
		//현재 이미지 크기를 확인
		var s = imgs[i].style.width;
		// 크기100을 빼서 크기지정	
		s = parseInt(s) - 100;
		imgs[i].style.width =  s+"px";// for문을 쓰는이유 다시생각
									  // 
		
	//img[0].style.width = parseInt(s) - 100 + "px";								  
									  
									  
		}
}
//id가 img1 태그 크기변경
//class가 backimg 첫번째 태그 크기변경	
</script>

</head>
<body>
<button type="button" onclick="toSm()">작게</button><br>
<img id="img1" style="width: 500px;" src="../images/Chrysanthemum.jpg">
<img class="backimg" style="width: 600px;" src="../images/Hydrangeas.jpg">
<img class="backimg" style="width: 700px;" src="../images/Jellyfish.jpg">
</body>
</html>