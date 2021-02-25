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
<div id="result"></div>
<div id="info"></div>
<script type="text/javascript">
function loadInfo(movieCd){
	//코드에 해당하는 영화 상세정보 조회- 감독 출연배우 
	var xhttp = new XMLHttpRequest();
	console.log(movieCd)
	xhttp.onreadystatechange = function() {
        if (xhttp.readyState === xhttp.DONE) {
            if (xhttp.status === 200 || xhttp.status === 201) {
                console.log(xhttp.responseText);
            } else {
                console.error(xhttp.responseText);
            }
        }
    	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="+movieCd;
		
    	xhttp.open("get", url);
    	xhttp.send();
    };

/*    xhttp.onload = function(){
		//parse  xhttp.responseText;
		var list = JSON.parse(this.responseText).movieInfoResult.movieInfo;
		//for 이름만 출력
		for( list in list){		
			document.getElementById("result").innerHTML +=
				"<div>"  + list.movieNm  + list.openDt+ "</div>"  ;			
		}
		console.log(list)
		} */
	
}

	function loadMovie(){
		var xhttp = new XMLHttpRequest();
		xhttp.onload = function(){
			//parse  xhttp.responseText;
			var rank = JSON.parse(this.responseText);
			var list = rank.boxOfficeResult.dailyBoxOfficeList;
			document.getElementById("result").innerHTML = "";
			//for 이름만 출력
			for(movie of list){
				document.getElementById("result").innerHTML +=
					"<div onclick=loadInfo('"+movie.movieCd+"')>" 
					+ movie.movieNm + + movie.movieCd
					+ "</div>"  ; 	
				
			}
	//	loadMovie.addEventListener("click", "loadInfo('"+ list[i].movieCd +"')")
			
			
		}
		var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210220";
		xhttp.open("get", url);
		xhttp.send();
	}
</script>
</body>
</html>