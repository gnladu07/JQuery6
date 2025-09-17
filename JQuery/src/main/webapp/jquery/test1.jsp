<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Jquery라이브러리 추가(필수) -->
<!-- <script src="../js/jquery-3.7.1.min.js"></script> -->

<!-- Jquery라이브러리(CDN: Content Delivery Network) 추가(필수) -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<script type="text/javascript">
	// $(document).ready(); 호출(필수)
	$(document).ready(function(){
		// 문서가 준비완료시 == body 태그의 로딩이 완료시
		alert(" 2. jquery 실행! ");
	});
	
	$(function(){
		alert(" 3. jquery 실행! ")
	});
	
	jQuery(document).ready(function(){
	// $ == jQuery
		alert(" 4. jquery 실행! ");
	});
	
	jQuery(function(){
		alert(" 5. jquery 실행! ")
	});
	
</script>

<script type="text/javascript">
	alert(" 1. 자바스크립트 실행! ");
</script>
</head>
<body>
	<h1>test1.jsp</h1>
	
	<h2> 제이쿼리 실행 </h2>
	
	
	
</body>
</html>