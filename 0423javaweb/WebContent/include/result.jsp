<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지를 포함해서 출력하기</title>
</head>
<body>
<!-- embeddedresult.jsp의 결과를 포함 -->
<jsp:include page="embeddedresult.jsp"></jsp:include>
<br/>
<%@ include file = "embeddedcode.jsp" %>

<%@
n = 20; //embeddedresult.jsp 는 결과가 포함된 것이므로 n이라는 변수는 존재하지 않습니다.
//return 타입이 void 인 메소드 처럼 페이지의 결과만 출력 
x = 40;
%>
</body>
</html>