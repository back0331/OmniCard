<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
var id = '${id}';
$(document).ready(function(){
	if(confirm("해당 회원("+id+")가 존재하지 않거나, 비밀번호가 올바르지 않습니다. 회원가입 창으로 이동하시겠습니까?")){
		location.href="goRegister.do";
	}
});
function register(){
	location.href="/goRegister.do";
}
</script>
</head>
<body>
<form action="login.do" method="post">
<table>
	<thead><tr><td>을의 친구 Omnicard</td></tr></thead>
	<tbody>
		<tr>
			<td bordercolor="#000000">아이디 : </td><td><input type="text" name="id"></td>
			<td bordercolor="#000000">비밀번호 : </td><td><input type="text" name="pw"></td>
		</tr>
		<tr>
			<td bordercolor="#000000"><input type="submit" value="로그인"></td>
			<td bordercolor="#000000"><input type="button" value="로그인" onclick="register()"></td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>
