<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movierank.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		//버튼클릭시 박스오피스 정보를 조회하여 영화제목과 영화코드를 rank div에 출력하기
		$("#btn").on("click", function(){
			$.ajax({
				url : "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210220",
				success : function(obj){ // 값을담고있는 obj를 가져와야한다. {}니까 . 붙이기
					var list = obj.boxOfficeResult.dailyBoxOfficeList;
					for(movie of list){
					//	$("#rank").append(obj.boxOfficeResult.dailyBoxOfficeList[0].movieNm) 1개출력
						$("#rank").append(movie.movieNm).append(movie.movieCd)
						}
					},
				dataType : "json"
			});
		});
	});
</script>
</head>
<body>
<button type="button" id="btn">박스오피스조회 </button>
<div id="rank"></div>
<div id="info"></div>

</body>
</html>