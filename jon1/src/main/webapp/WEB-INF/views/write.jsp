<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="chat.jsp">채팅하기</a>
	<form method="post" action="writeaction.jsp">
		<table class="table table-striped"
			style="text-align: center; border: 1px solid #dddddd">

			<thead>
				<tr>
					<th colspan="2"
						style="background-color: #eeeeee; text-align: center;">이승준의
						이야기</th>

				</tr>

			</thead>

			<tbody>

				<tr>

					<td><input type="text" class="form-control"
						placeholder="작성자이름" name="name" value="<%=session.getAttribute("id") %>" size="50" maxlength="50" /></td>

				</tr>

				<tr>

					<td><textarea class="form-control" placeholder="하고싶은 이야기"
							name="content" rows="20" cols="50" style="height: 350px;"></textarea></td>

				</tr>

			</tbody>
			
			<tfoot>
				<tr>
					<td>
					<input type="submit" value="작성하기" />
					<input type="button" value="메인으로" id="btn" />
				</tr>
			</tfoot>
		</table>
	</form>
	
	

<script>
	document.getElementById("btn").addEventListener("click", function(){
		location.href = "./";
	})

</script>

</body>
</html>