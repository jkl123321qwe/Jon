<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imformation</title>
</head>
<body>
<div>
<h1>이승준</h1>
<p>안녕하세요 저는 이승준 입니다.</p>
<p>이승준은 누구일까요?</p>
<img src="images/question.gif" width="300" height="200">
<p>먼저 저는 풍산중학교를 다니고 있는 학생입니다.</p>
<img src="images/ssj.gif.jpg" width="300" height="200">
<p>저는 2004년 9월 5일 허우재 병원에서 태어났습니다.</p>
<p>돌잔치 때는 마우스를 잡았다고 하십니다.</p>
<p>어렀을떄 부터 모바일 기기나 컴퓨터를 굉장히 좋아 했습니다.</p>
<input type="button" value="메인으로" id="btn" />







</div>
</body>
<script>
	document.getElementById("btn").addEventListener("click", function(){
		location.href = "./";
	})

</script>
</html>