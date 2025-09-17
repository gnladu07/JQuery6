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
		//alert("test")
		$("*").css("color", "red", );	// 모든 요소 접근
		$("h1").css("color", "black");	// 특정 태그 요소에 접근
		$("h2").css("color", "blue");
		
		$("#t1").css("color", "pink");	// 아이디 선택자 (개발자) 중복X
		$(".t2").css("color", "orange");// 클래스 선택자 (디자인) 중복O
		
	});
</script>

</head>
<body>
	<h1>test2.jsp</h1>
	<h1> jQuery는 조금더 편하게 요소에 접근가능 </h1>
	
	<h2 id="t1"> 제목 </h2>
	<h2 class="t2"> 제목 </h2>
	
</body>
</html>