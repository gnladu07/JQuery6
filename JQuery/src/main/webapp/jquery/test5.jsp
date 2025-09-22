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
		// text() : 태그의 내용을 변경
		// html() : 태그의 내용을 변경 
		var tx = $("h3").text();   // 해당하는 모든 요소에 값(내용)을 가져온다
		//alert(tx);
		var ht = $("h3").html();   // 해당하는 첫번째 요소에 값(내용)을 가져온다
		//alert(ht);
		
		// 해당하는 모든 요소의 내용을 변경
		//$("h3").text("ITWILL BUSAN");		
		$("h3").html("itwill busan");
		
		
		// 내용을 변경 text()는 문자 그대로 출력,
		// html() 태그가 있다면 태그로 처리 해서 출력
// 		$("div").text("<h2>ITWILL BUSAN</h2>");		
		$("div").html("<h2>itwill busan</h2>");
		
		
		
		$("div").html(function(idx,html){
			//alert(idx + "/" +html);
			return html+" / "+idx;
			
		});
		
		
		// append() : 특정 요소의 뒷쪽에 추가
		// prepend() : 특정 요소의 앞쪽에 추가
		
		// main클래스명을 가진 요소 앞뒤에 내용을 추가
		
		$(".main").append(" 뒤쪽에 추가 하는 내용 ");
		$(".main").prepend(" 앞쪽에 추가하는 내용 ");
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<h1>test5.jsp</h1>
	
	<h2> 태그 속성의 값(내용)을 변경 </h2>
	
	<h3>head-0</h3>
	<h3>head-1</h3>
	<h3>head-2</h3>
	
	<hr>
	
	<div>000</div>
	<div>111</div>
	<div>222</div>
	
	
	<hr>
	
	<span class="main"> [내용] </span>
	
	<hr>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td>지역</td>
		</tr>
	</table>
	
	<script type="text/javascript">
		$(document).ready(function(){
			// append()를 사용해서 테이블(표)에 내용을 추가
			//alert(" 체크 ");
			//$("tr").append("<tr><td>아이티윌</td><td>부산</td></tr>");
			$("table").append("<tr><td>아이티윌</td><td>부산</td></tr>");
			
			// JSON 타입의 배열
			// [ object,object,object,.... ]
			// 자바스크립트에서 { } 객체로 표현
			var data = [
				{"name":"학생1","region":"부산"},
				{"name":"학생2","region":"서울"},
				{"name":"학생3","region":"대구"},
				{"name":"학생4","region":"대전"},
				{"name":"학생5","region":"제주"}
			];
			
			for(var i=0;i<data.length;i++){
				$("table").append("<tr><td>"+data[i].name+"</td><td>"+data[i].region+"</td></tr>");
			}
			
			
			// $(요소).each(function()) : 선택한 요소에 순차적으로 접근하는 함수
			// => 반복문 처럼 사용
			
			$(data).each(function(idx,item){
				//alert(idx+"/"+item);
				console.log(item);
				$("table").append("<tr><td>"+item.name+"</td><td>"+item.region+"</td></tr>");
			});
			
			
// 			$(data).each(function(idx,item){
// 				$("span").html(item.name + "/"+item.region);
// 			});
			
			$("span.sp").html(function(idx,html){
				//alert(idx);
				//alert(data[idx].name);
				return data[idx].name +"/"+data[idx].region;
			});
			
			
			
		});	
	</script>
	
	
	<hr>
	<h2> 이름 / 지역 </h2>	
	<span class="sp">0</span> <hr>
	<span class="sp">1</span> <hr>
	<span class="sp">2</span> <hr>
	<span class="sp">3</span> <hr>
	<span class="sp">4</span> <hr>
	
	
	
	
	
	
	
	
	
</body>
</html>