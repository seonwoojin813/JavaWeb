<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <!--JSTL의 core 기능을 사용하기 위한 식별자와 접두어 등록 -->   
 <%@ taglib prefix="c" 
 uri="http://java.sun.com/jsp/jstl/core"%>
 
 <c:set var="num1" value="100" />
 <c:set var="num2" value="90" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 분기문</title>
</head>
<body>
<!--  num1 또는 num2 중에서 큰 값을 출력
문자열로 비교하기 때문에 90 > 100 입니다. -->
<c:if test="${num1 > num2}">
<p>num1:${num1}</p>
</c:if>

<c:if test="${num1 < num2}">
<p>num2:${num2}</p>
</c:if>

<!-- num1 값이 101이면 우수 100이면 보통 그 이외의 경우는 부진이라고 출력 
일치하는 것을 비교할 떄는 ==로 해도되고 eq를 사용해도 됩니다. -->

<c:choose>
  <%-- <c:when test="${num == 101}"> --%>
     <c:when test="${num eq '101'}">
     <p>우수</p>
   </c:when>
<%-- <c:when test="${num == 100}"> --%>
     <c:when test="${num eq '100'}">
     <p>보통</p>
   </c:when>
<c:otherwise>
   <p>부진</p>
   </c:otherwise>
</c:choose>


</body>
</html>