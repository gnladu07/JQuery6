<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test9-2.jsp</h1>
	
	<%
		System.out.println(" 비동기방식 ajax로 test9-2.jsp 실행 ");
		System.out.println(request.getParameter("id"));		
		System.out.println(request.getParameter("pw"));		
	
	%>
	<h2> 아이디, 비밀번호: <%=request.getParameter("id") %>,<%=request.getParameter("pw") %> </h2>
</body>
</html>