<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>닉네임:<%=session.getAttribute("name")%></h3>
	보내는 메시지:
	<input type="text" id="message" size="60" />
	<input type="button" onclick="send()" value="전송" />
	<br /> 받은 메시지:
	<textarea id="disp" cols="80" rows="20"></textarea>

</body>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<script>
	var webSocket = new WebSocket('ws://192.168.0.24:8080/Project/websocket');
	
	webSocket.onerror = function(event) {
		onError(event)
	};
	webSocket.onopen = function(event) {
		onOpen(event)
	};
	webSocket.onmessage = function(event) {
		onMessage(event)
	};
	
	function onMessage(event) {
		$('#disp').val($('#disp').val() + '\n' + event.data);
	}
	function onOpen(event) {
		document.getElementById('disp').value = '채팅 접속 성공';
	}

	function onError(event) {
		alert(event.data);
	}

	function send() {
		webSocket.send('<%=session.getAttribute("name")%>' + ":" + $('#message').val());
		$('#message').val('');
		return false;
	}

</script>
</html>