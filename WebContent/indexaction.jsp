<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.Test" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Test pw = new Test();
%>
<!-- 개발자 임의의 암호화 -> 데이터베이스에 입력할 때, 로그인검사할 때 덧붙혀서 입력, 검사 -->
<%=pw.encryption(request.getParameter("pw")) %>
<!-- 
// 1차 암호화
insert into [table] values("id",password('pw'); -> DB 암호화

로그인검사할 때는
select count(*) from user where id="받아온 id값" and pw=password('받아온 pw값');
값이 0이면 로그인실패, 값이 1이면 로그인 성공
 -->
</body>
</html>