<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page</title>
</head>
<body>
<h1>이승준의 학교 생활</h1>
<img src="images/school.gif" width="350" height="250">
<p>나 이승준은 학교생활도 매우 활기차게 생활했습니다.</p>
<p>또 공부는 수학,국어는 좋아하는 편이였습니다.</p>
<p>하지만 컴퓨터를 더좋아해서 공부를 잘하지 않았습니다, 그러던 도중 디지털 미디어 고등학교를 찾았고 목표로 삼고 공부를 열심히 하기 시작했습니다.</p>
<img src="images/happy.gif" width="300" height="250">
<input type="button" value="메인으로" id="btn" />


</body>
<script>
	document.getElementById("btn").addEventListener("click", function(){
		location.href = "./";
	})

</script>
</html>