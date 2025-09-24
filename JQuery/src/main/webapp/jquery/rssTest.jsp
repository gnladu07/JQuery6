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
		
		/*
			RSS 서버는 Access-Control-Allow-Origin 이라는 헤더 정보가 없음
			=> 다른 도메인 주소로 접근시 본문내용에 접근을 차단
			
			rss2Json (서버) <=> RSS(서버) 통신은 CROS 제약없음
			=> Access-Control-Allow-Origin 이라는 헤더 정보를 붙여서 전달
		*/
		
		$("#newsBtn").click(function(){
			
			$.ajax({
				//url: "https://news-ex.jtbc.co.kr/v1/get/rss/section/sports",
				url: "https://api.rss2json.com/v1/api.json",
				data: {
					rss_url: "https://news-ex.jtbc.co.kr/v1/get/rss/section/sports",
					api_key: "nyedd3yopquyenbtffcxjt2jzaaja7hatc5cagta",
					count: 5
				},
				success: function(data){
					alert("jtbc rss 서비스 다녀옴");
					console.log(data);
					$(data.items).each(function(idx, item){
						// alert(idx+"/"+item);
						// alert(item.title);
						
						$("#newsDiv").append("<a href='"+item.link+"'>"+item.title+"</a> <br>");						
					});
					
				}
			});
			
		});
	});
</script>
</head>
<body>
	<h1>rssTest.jsp</h1>
	
	<input type="button" value="뉴스정보 가져오기" id="newsBtn">
	<div id="newsDiv"></div>
	
</body>
</html>