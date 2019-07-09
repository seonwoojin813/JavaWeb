<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
<%
//세션을 삭제하고 로그인 페이지로 이동
session.invalidate();
response.sendRedirect("login.jsp");
%>

</body>
</html>