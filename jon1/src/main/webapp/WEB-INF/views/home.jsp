<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕하세요</title>
<style>
	div{
		left:30%;
	}
</style>
</head>
<body>
<h1 align="center">안녕하세요!</h1>
<img src="images/lion.gif" width="350" height="250">
<p>
저는 풍산중학교 3학년 이승준이라고 합니다.
</p>
<h2>이승준</h2>
<p><a href="Imformation.do">이승준 알아보기</a></p>
<p><a href="page.do">승준이의 학교생활</a></p>


<%
	if(session.getAttribute("id") == null){
		out.print("<a href='login.do'>게시판에 글쓰기를 하거나 채팅을 할려면 로그인</a>");
	}else{
		out.print("<a href='logout.do'>로그아웃</a>");
	}
%>

</body>
<script>
	document.getElementById("btn").addEventListener("click", function(){
		location.href = "login.do";
	})

</script>
</html>
