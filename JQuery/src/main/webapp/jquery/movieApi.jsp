<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#movieBtn").click(function(){
			
			// 날짜정보를 가져오기
			var searchDate = $("#searchDate").val();
			console.log(searchDate); // 2025-09-11
			
			searchDate = searchDate.replaceAll("-","");
			console.log(searchDate); // 20250911
			
			
			$.ajax({
				url: "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
				data: {					
					"key": "7a7c832edd0c4efad6a77a01dc0992e0",
					"targetDt": searchDate
				},
				dataType: "json",
				success: function(data){
					// alert("영화 박스오피스 정보를 가져오기");
					// console.log(data);
					$("#resultDiv").html(
						'<table border="1">'
						+'<tr>'
						+'<th whith= "100"> 현재순위(rank)</th>'
						+'<th whith= "400"> 영화명(movieNm)</th>'
						+'<th whith= "150"> 개봉일(openDt)</th>'
						+'<th whith= "100"> 누적순위(audiAcc)</th>'
						+'</tr>'
						+'</table>'
					);
					
					// 테이블에 해당하는 정보를 찾아서 출력
					$(data.boxOfficeResult.dailyBoxOfficeList).each(function(idx, item){
						
						$("#resultDiv > table").append(
						
								"<tr>"
								+"<td>"+item.rank+"위 </td>"
								+"<td>"+item.movieNm+"</td>"
								+"<td>"+item.openDt+"</td>"
								+"<td>"+ Number(item.audiAcc).toLocaleString()+"명 </td>" // Number().toLocaleString(): 숫자를 000,000 단위로 , 찍어준다
								+"</tr>"
						
						);
						
					});
					
				}
				
			});
			
		});
		
	});
	
</script>
</head>
<body>
	<h1>movieApi.jsp</h1>
	
	<h2> 영화 일별 박스 오피스 정보를 조회 </h2>
	
	<input type="date" id="searchDate">
	<input type="button" value="영화 정보 조회" id="movieBtn">
	
	<!-- ajax로 정보를 가져오기(순위, 영화명, 개봉일, 누적관객수) -->
	<div id="resultDiv"></div> 
	
</body>
</html>