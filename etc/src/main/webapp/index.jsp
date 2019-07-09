<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
 <p><a href="pwsend"><img src ="image/but.png" width="150px" hright="50"/></a></p>
 <!-- a 태그에서 href에 #을 사용하면 페이지 이동이 아니고 클릭이벤트를 사용 -->
 <p><a href="#" id="proxylink">proxy 요청</a><p>
 <p><input type="button" id="proxybtn" value="proxy 요청" /></p> 
 
 <p><input type="button" id="pushbtn" value="web push 요청" /></p> 
  <!--  <div id ="pushdisp"></div> -->
 <img id ="pushdisp"></img> 
 
 <script>
 //웹소켓 서버에 접속
var webSocket = new WebSocket("ws://locationhost:8080/etc/websocket")
 //서버에게 메시지 전송
 wevSocket.send('Hello Server')
 
 </script>
 
<!--  <script>
	
document.getElementById("pushbtn").addEventListener(
		 "click", function(e){
			 //푸시 이벤트 등록
		   var eventSource = new EventSource("push")
			 //서버로부터 메시지가 왔을 때 처리
			 eventSource.addEventListener('message', function(e1){
				 document.getElementById('pushdisp').innerHTML = e1.data
			 });
		 });
</script>
 
 -->
 
 <script>
 
	var ar = []
document.getElementById("pushbtn").addEventListener(
		 "click", function(e){
			 //푸시 이벤트 등록
		   var eventSource = new EventSource("push")
			 //서버로부터 메시지가 왔을 때 처리
			 eventSource.addEventListener('message', function(e1){
				 document.getElementById('pushdisp').src = ar[parseInt(e1.data)]
			 });
			 for(var attr in eventSource){
				 console.log(attr)
			 }
		 });
</script>
 
 
 
 <!-- 외부 스크립트를 사용하기 위한 설정 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 <!-- 내부 스크립트 -->
 <script>
 document.getElementById("proxylink").addEventListener(
		 'click', function(e){
			 console.log('click')
	    //ajax요청 - jquery이용
	    $.ajax({
	    	url: 'proxy',
	    	data:{'addr': 'http://www.kma.go.kr/weather/forecast/mid-term-xml.jsp?stnId=109'},
	    	dataType:'xml',
	    	success: function(data){
	    		//파싱된 결과가 data에 저장
	    		//alert(data)
	    		//data 태그를 찾아와서
	    		$(data).find('data').each(function(idx,item){
	    		//alert($(this).find('temp').text())
	    		//console.log($(this).find('temp').text())
	    		output = '<p>'
	    		output += '날씨:' + $(this).find('wf').text()
	    		output += '최저온도::' + $(this).find('tmn').text()
	    		output += '<p>'
	    		$('body').html($('body').html() + output)
	    		})
	    		
	    	}
	    })
	 })
 
 </script>
</body>
</html>