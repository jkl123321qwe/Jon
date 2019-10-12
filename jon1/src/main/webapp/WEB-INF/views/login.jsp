<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
	<img src="images/login.gif" width="275" height="200">
	<div id="wrap">
		<form name="loginInfo" method="post" action="loginpro.jsp"
			onsubmit="return checkValue()">


			<br>
			<br>

			<table>
				<tr>
					<td bgcolor="skyblue">아이디</td>
					<td><input type="text" name="id" maxlength="50"></td>
				</tr>
				<tr>
					<td bgcolor="skyblue">비밀번호</td>
					<td><input type="password" name="password" maxlength="50"></td>
				</tr>
			</table>
			<br> <input type="submit" value="로그인" /> <input type="button"
				value="회원가입" id="btn" /> <input type="button" value="취소" id="btn1" />
		</form>
	</div>
</body>
<script>
<%
	if(session.getAttribute("login") != null){
		out.println("alert('없는 아이디이거나 비밀번호가 틀렸습니다.')");
	}
%>

function checkValue()
{
    inputForm = eval("document.loginInfo");
    if(!inputForm.id.value)
    {
        alert("아이디를 입력하세요");    
        inputForm.id.focus();
        return false;
    }
    if(!inputForm.password.value)
    {
        alert("비밀번호를 입력하세요");    
        inputForm.password.focus();
        return false;
    }
}

	document.getElementById("btn").addEventListener("click", function(){
		location.href = "join.jsp";
	})
	document.getElementById("btn1").addEventListener("click", function(){
		location.href = "index.jsp";
	})

</script>


</html>
