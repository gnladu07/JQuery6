<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// alert("test7.jsp")
		
		$("input").click(function(){
			alert(" jQuery 버튼 클릭! ");
		});
		
		$("input").on("click", function(){
			alert(" on 버튼 클릭! ");
		});
		
		$("h2").click(function(){
			// $("h2").append("+");
			$(this).append("+"); // 특정 대상 만 수행 함
		});
		
		/* $("h2").on("click", function(){
			$("h2").append("+");
		}); */
		
		// 이미지 태그에 마우스 올렸을때 이미지를 변경
	/* 	$("img").mouseover(function(){
			
			// 이미지를 변경 => 이미지 태그의 src 속성을 변경
			$(this).attr("src", "../img/2_img.webp"); 
			
		}); 
		
		$("img").mouseout(function(){
			
			// 이미지를 변경 => 이미지 태그의 src 속성을 변경
			$(this).attr("src", "../img/1_img.webp"); 
			
		});  */
		
		$("img").mouseover(function(){
			
			// 이미지를 변경 => 이미지 태그의 src 속성을 변경
			$(this).attr("src", "../img/2_img.webp"); 
			
		}).mouseout(function(){
			
			// 이미지를 변경 => 이미지 태그의 src 속성을 변경
			$(this).attr("src", "../img/1_img.webp"); 
			
		}); // 체이닝 기법
		
		
		
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>test7.jsp</h1>
	
	<input type="button" value="버튼" onclick=" alert('버튼 클릭!'); ">
	
	<hr>
	<h1> 해당 h2태그 클릭시 마다 + 기호 추가 </h1>
	<h2> head - 0 </h2>
	<h2> head - 1 </h2>
	<h2> head - 2 </h2>
	
	<hr>
	
	<h1> 마우스를 올렸을때 다른 이미지로 변경 </h1>
	<img src="../img/1_img.webp" width="100"> 
	
</body>
</html>