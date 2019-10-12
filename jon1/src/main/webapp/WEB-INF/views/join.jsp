<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
</head>
<body>

    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
 
    <script type="text/javascript">
    
       
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
          
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }
        }
        
       
        function goLoginForm() {
            location.href="LoginForm.jsp";
        }
    </script>


    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        
        
        <form method="post" action="joinpro.jsp" name="userInfo" >
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="50">
                       
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="password" maxlength="50">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="passwordcheck" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                  <td id="title">전화번호</td>
                    <td>
                        <input type="text" name="number" maxlength="50">
                    </td>
                    
                <tr>
                                    </tr>
                    
 
            </table>
            <br>
            <input type="submit" value="가입"/>  
            <input type="button" value="취소" id="btn" /> 
        </form>
    </div>
</body>
<script>
	document.getElementById("btn").addEventListener("click", function(){
		location.href = "login.jsp";
	})
</script>
</html>

