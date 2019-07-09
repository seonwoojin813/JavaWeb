<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page trimDirectiveWhitespaces="true" %>
 <%@ page import="java.util.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처음 만들어 보는 JSP</title>
</head>
<body>
<!-- JSP 파일은 html 안에 Java 코드를 작성할 수 있다 -->
<h3>JSP 파일은 HTML 파일 안에 Java 코드를 작성할 수 있습니다. </h3>

<%

  String str = "Be Happy";

Date today = new Date();

%>
  <p><%=str%></p>
  <%=today%>

</body>
</html>