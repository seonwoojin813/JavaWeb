<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 에러가 발생했을 때 보여질 페이지를 설정 -->
<%@ page errorPage = "/error/number.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
<%
//age라는 파라미터가 없는데 정수로 변환 - 예외가 발생(NumberFormatException)
int age = Integer.parseInt(request.getParameter("age"));
%>

</body>
</html>