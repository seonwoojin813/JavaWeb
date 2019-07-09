<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리 페이지</title>
</head>
<body>
   <%
   //파라미터 읽기
   String query = request.getParameter("query");
   //String page =  requset.getParameter("page"); ---> 이렇게 쓰면 오류
   String p =  request.getParameter("page");
   //없는 파리미터를 읽으면 null이 리턴됩니다.
   String cnt = request.getParameter("cnt");
   %>
   
   query:<%= query %><br />
   page:<%= p %><br />
   cnt:<%= cnt %><br />
   
</body>
</html>