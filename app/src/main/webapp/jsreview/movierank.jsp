<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movierank.jsp</title>
</head>
<body>
<button id="btn" onclick="loadMovie()">박스오피스조회 </button>
<button id="btn" onclick="loadInfo()">박스오피스조회 </button>
<div id="result"></div>
<div id="info"></div>
<script type="text/javascript">
function loadInfo(movieCd){
	//코드에 해당하는 영화 상세정보 조회- 감독 출연배우 
}
	var xhttp = new XMLHttpRequest();
	xhttp.onload = function(){
		//parse  xhttp.responseText;
		var rank = JSON.parse(this.responseText);
		var list = rank.boxOfficeResult.dailyBoxOfficeList;
		//for 이름만 출력
		
		for(movie of list){
		document.getElementById("result").innerHTML +=
			"<div onclick=loadInfo(' " + movie.rank )'>"+ ":" 
									+ movie.movieNm  
									+ movie.movieCd+ "</div>"  ; 	
			
		}
		
		
		
	}
	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079";
	xhttp.open("get", url);
	xhttp.send();


	function loadMovie(){
		var xhttp = new XMLHttpRequest();
		xhttp.onload = function(){
			//parse  xhttp.responseText;
			var rank = JSON.parse(this.responseText);
			var list = rank.boxOfficeResult.dailyBoxOfficeList;
			//for 이름만 출력
			
			for(movie of list){
			document.getElementById("result").innerHTML +=
				"<div>" + movie.rank + ":" + movie.movieNm + + movie.movieCd+ "</div>"  ; 	
				
			}
			
			
			
		}
		var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210220";
		xhttp.open("get", url);
		xhttp.send();
	}
</script>
</body>
</html>