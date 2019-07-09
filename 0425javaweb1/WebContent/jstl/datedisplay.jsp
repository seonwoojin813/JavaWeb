<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- 날짜 및 시간 포맷을 위한 태그 라이브러리 설정 -->    
 <%@ taglib prefix="fmt" 
 uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 포맷 설정</title>
</head>
<body>
<!--  pattern에 사용하는 서식은 SimplrDateFormat의 서식 -->
<p><fmt:formatDate value="${date}" type="date" pattern="yyyy/MM/dd(EEE)"/></p>
<p><fmt:formatDate value="${date}" type="time" pattern="(a) hh:mm:ss"/></p>
<p><fmt:formatNumber value="${num}" type="currency"/></p>
<p><fmt:formatNumber value="${num}"  pattern="#,###.00"/></p>

<h3>일본</h3>
<fmt:setLocale value="ja_jp" />
<p><fmt:formatDate value="${date}" type="date" dateStyle="full" /></p>
<p><fmt:formatNumber value="${num}" type="currency" /></p>

서울:
<fmt:formatDate value="${date}" type="both" /><br />

런던:
<fmt:timeZone value="Europe/London">
<fmt:formatDate value="${date}" type="both" /><br/>
</fmt:timeZone>

뉴욕:
<fmt:timeZone value="America/New_York">
<fmt:formatDate value="${date}" type="both" /><br/>
</fmt:timeZone>


</body>
</html>