<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이템 삽입</title>
</head>
<body>
<!--  form의 속성
 id - javascript에서 이벤트 처리를 하기 위해서 설정
 action - 폼위 데이터를 전송할 서버 URL : 생략하면 현재 URL
 method - 서버에게 요청할 때 요청방식 : get 또는 post - 생략하면 get
 enctype - 파일을 업로드 할 때 multipart/ form-data로 설정
 post를 설정해야 하는 경우는 file, textarea,password가 있는 경우 -->
	
	<form action="put.do" method="post" id="myform">
		<!-- 눈에 보이지는 않지만 폼의 데이터가 전송될 때 같이 전송 됨  -->
		<input type = "hidden" name="code" value="${item.code}" />

		<!-- 모바일은 밑으로 가기위해서 div를 쓰고 일반 pc는 옆으로 가기위해서 span을 쓰는게 좋다 -->
		<br /> 
		<label for="title">제목</label> 
		<input type="text" name="title" id="title" size="20" required="required" value="${item.title}" /><br /> <label
			for="category">분류</label> 
			<input type="text" name="category" id="category" size="20" required="required" value="${item.category}" /><br /> <label
			for="description">설명</label>
		
		<!-- textarea는 태그와 태그사이에 초기값 설정 -->
		<textarea rows="10" cols="20" name="description" id="description" >${item.description} </textarea><br /> 
		
		<input type="submit" vaule="데이터 수정" />

	</form>

</body>
</html>