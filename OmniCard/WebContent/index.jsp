<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/MainCSS.css">
<script>
function register(){
	location.href="goRegister.do";
}
function rollback(){
	var result="${result}";
	if(result.length!=0){
		alert(result);
	}
}
</script>
</head>
<body background="/OmniCard/image/index_background.jpg" onload="rollback()">
<form action="login.do" method="post" class="loginForm">
<table>
	<thead><tr><td colspan="2"><h1>Omnicard</h1></td><td></td></tr></thead>
	<tbody>
		<tr>
			<td>아이디 : </td><td><input type="text" name="id" value=""></td>
			<td>비밀번호 : </td><td><input type="text" name="pw" value=""></td>
		</tr>
	</tbody>
</table>
<input type="submit" value="로그인">
<input type="button" value="회원가입" onclick="register()">
</form>
</body>
</html>
