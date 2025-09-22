<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	/* div, h1, a {
		border: 2px solid black;
		display: block;
		padding: 10px;
		margin: 10px;
	} */
	
</style>

<!-- bxslider -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>


<!-- <script src="../js/jquery-3.7.1.min.js"></script> -->


<script type="text/javascript">
	$(function(){
		$("#parent").click(function(){
			alert(" div 클릭! ");
		});
		
		$("#child").click(function(){
			alert(" h1 클릭! ");
		});
		
		$("a").click(function(event){
			alert(" a 클릭! ");
			
			// 1) 페이지 링크 이동을 막는 기능
			// event.preventDefault();
		
			// 2) 부모요소(div, h1)로 이벤트 전달 막기
			// event.stopPropagation();
	
			// 3) 페이지 이동X, 부모요소로 이벤트 전달X
			return false;
		});
		
		// 하위요소 클릭시 상위요소의 클릭 이벤트 실행!
		
		///////////////////////////////////////////////
		
		// textarea 태그가 글자를 입력할때 글자의 개수를 체크
		$("textarea").keyup(function(){
			// alert(" 글자 입력! ");
			// 글자의 개수 체크
			var tmp = $(this).val();	// val() 요소의 값을 가져오는 메서드
			// alert(" tmp : "+tmp.length);
			// 200에서 뺀 나머지를 h2 태그에 표시
			$("h2").html(200 - tmp.length);
			
			// 만약에 입력한 글자수가 200자를 초과하면 글자수를 빨간색 표시
			if(200 - tmp.length < 0){
				$("h2").css("color", "red");
			}
			// 만약에 입력한 글자수가 200자 이하면 글자수를 검정으로 표시
			else {
				$("h2").css("color", "black");
			}
		});
		
		// jquery 효과
		$("h1").click(function(){
			// $(this).hide();
			// $(this).show();
			$(this).next().toggle(); // 부모가 자식을 숨김
			
		});
		
		
		// https://bxslider.com/
	    $(".slider").bxSlider();
	    
	});
</script>
</head>
<body>
	<h1>test8.jsp</h1>
	
	<div id="parent">
		<h1 id="child">
			<a href="https://www.naver.com/">네이버 이동</a>
		</h1>
	</div>
	
	<hr>
	<h1> 글자수 입력 체크 </h1>
	<h2>200</h2>
	
	<textarea rows="5" cols="50"></textarea>
	
	<hr>
	
	<h1>열기,닫기1</h1>
	<div>
		<h1>제목1</h1>
		<p>본문1</p>
	</div>
	
	<h1>열기,닫기2</h1>
	<div>
		<h1>제목2</h1>
		<p>본문2</p>
	</div>
	
	<hr>
	<h1>https://bxslider.com/</h1>
	
	<div class="slider">
      <div><img src="../img/1_img.webp"></div>
      <div><img src="../img/2_img.webp"></div>
      <div><img src="../img/3_img.webp"></div>
    </div>

</body>
</html>