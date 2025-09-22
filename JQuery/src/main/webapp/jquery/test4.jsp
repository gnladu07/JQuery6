<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Jquery 라이브러리 추가 (필수) -->
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//alert("test4.jsp");
		
		// css() 함수 : css 속성값을 제어하는 함수
		// attr() 함수 : 태그 요소의 속성을 제어하는 함수
		
		// 이미지를 출력하는 img태그의 src 속성값을 출력
		var src = $("img").attr("src"); // 가장 첫번째 요소 1개의 정보
		//alert(src);
		
		// 이미지 border 속성을 변경 5 
		$('img').attr("border","5");
		
		// 모든 이미지의 가로길이 (width) 100으로 통일
		$('img').attr("width","100");
		
		// 각 이미지의 border 속성값을 5,10,15 로 설정
		$("img").attr("border",function(idx){
			  //alert(idx); 0 1 2
			  return (idx+1) * 5;
		});
		
		// 각각의 이미지 세로길이(heigt) 50 100 150 설정,
		// 가로길이 (width) 100 설정,
		// 테두리(border) 5 설정
		$("img").attr({
			"height":function(idx){
				return (idx+1)*50;
			},
			"width" : "100",
			"border" : "5"
		});
		
	});
</script>
</head>
<body>
	<h1>test4.jsp</h1>
	
	<img src="../img/1_img.webp">
	<img src="../img/2_img.webp">
	<img src="../img/3_img.webp">
	
	
	
	
</body>
</html>