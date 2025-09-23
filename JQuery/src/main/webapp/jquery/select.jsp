<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.mysql.cj.xdevapi.JsonArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!// 선언문 (멤버변수)	
	// 상수 (변하지 않는 변수) 선언
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	private static final String DBID = "root";
	private static final String DBPW = "1234";%>


<%
Class.forName(DRIVER);
System.out.println(" 1) 드라이버 로드 성공! ");
%>


<%
Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW);
System.out.println(" 2) DB 연결 성공! ");
System.out.println(" conn :" + conn);
%>


<%
String sql = "select * from itwill_member";
// => SQL 구문을 작성할때 ;을 빼고 작성

PreparedStatement pstmt = conn.prepareStatement(sql);
System.out.println(" 3) pstmt 객체 생성 & SQL 실행 준비 완료! ");
%>


<%
// SQL구문에 따른 실행메서드가 다르다.
// pstmt.executeUpdate();	insert구문, update구문, delete구문
// pstmt.executeQuery();	select구문

ResultSet rs = pstmt.executeQuery();
// => select문의 결과인 레코드셋이라는 데이터를 저장하는 객체
//    커서가 보고있는 데이터만 활성화 상태
System.out.println(" 4) SQL 실행 완료! ");
%>


<%
// DB에서 조회한 결과(rs)데이터를 사용해서 원하는 정보만 출력
// for()

// 배열 생성
// ArrayList memList = new ArrayList();
// JSON 배열 생성
JSONArray memberList = new JSONArray();
		
while (rs.next()) {
	String id = rs.getString("id");
	String pass = rs.getString("pass");
	String name = rs.getString("name");
	int age = rs.getInt("age");
	String gender = rs.getString("gender");
	String email = rs.getString("email");
	Timestamp regdate = rs.getTimestamp("regdate");
	// rs -> DTO
	// MemberDTO dto = new MemberDTO();
	JSONObject dto = new JSONObject();
	// dto.put("id",id);
	dto.put("id",rs.getString("id"));
	dto.put("pass",rs.getString("pass"));
	dto.put("name",rs.getString("name"));
	dto.put("age",rs.getInt("age"));
	dto.put("gender",rs.getString("gender"));
	dto.put("email",rs.getString("email"));
	dto.put("regdate",rs.getTimestamp("regdate")+"");
	// => 날짜 정보는 JSON에서 직접처리 불가능, 문자형태로 변경해서 사용
	System.out.println("rs -> JSON 객체에 저장 와료! ");
	
	memberList.add(dto);
	System.out.println(" JSON 객체 -> JSON Array에 저장 완료! ");
	
	
}	//while
	System.out.println("회원정보 저장완료!");
%>
<%=memberList %>