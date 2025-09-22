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
	$(document).ready(function(){
		// alert("test3.jsp");
		
		
		// 메서드의 파라메터가 1개일때는 속성의 값을 리턴
		var color = $("h2").css("color");
		alert(" 결과 : "+color);
		
		// 메서드의 파라메터가 2개일때는 속성의 값을 변경
		$("h2").css("color","blue");
		
		// h2태그의 글자색을 각각 다르게 설정
		$("h2:first").css("color","red");
		$("h2#h3").css("color","green");
		
		var setColor = ["red","orange","yellow"];
		$("h2").css("color",function(idx,value){
			//alert("속성 function()실행! "+idx+"/"+value);
			return setColor[idx];
		});
		
		$("h2").css("background","black");
		
		// 한번에 여러개의 속성을 제어
		$("h2").css({
			"color":"black",
			"background" : "yellow"
		});
		
		$("h2").css({
			"color":"black",
			"background" : function(idx){
				return setColor[idx];
			}
		});
		
		
	});
</script>
</head>
<body>
	<h1>test3.jsp</h1>
	
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2 id="h3">head-2</h2>
	
	
	
</body>
</html>