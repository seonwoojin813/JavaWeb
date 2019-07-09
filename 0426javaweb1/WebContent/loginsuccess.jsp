<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 페이지</title>

<!-- jquery를 사용하기 위한 링크 설정 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script>
//브라우저 창을 닫을 때 서버에게 logout 요청
$(window).bind("beforeunload", function(){
	$.ajax({url:'logout'})
})
</script>

</head>
<body>
   <!-- EL을 이용해서 별명 출력 -->
   <p>${nickname} 님</p>
   <p><a href="logout">로그아웃</a>
   </body>
</html>