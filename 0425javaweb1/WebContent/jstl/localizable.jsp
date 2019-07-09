<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!-- 날짜 및 시간 포맷을 위한 태그 라이브러리 설정 -->    
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
 <%
 String str = "Hello World";
 request.setAttribute("str", str);
 %>
 
 <!-- 지역화 할 내용을 가진 프로퍼티 파일을 지정 -->
 <fmt:setBundle basename="intro"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역화 구현</title>
</head>
<body>
<!-- 메시지를 가져와서 출력 -->
<fmt:message key="greeting"></fmt:message> 

문자열을 그대로 출력:${str}<br />
모두 대문자로 출력: ${fn:toUpperCase(str)}<br/>
3글자만 출력:${fn:substring(str, 0,3)}...<br/>

</body>
</html>