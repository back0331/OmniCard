<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<!-- <link rel="stylesheet" type="text/css" href="/OmniCard/css/MainCSS.css"> -->
<script>
function rollback(){
	var result="${result}";
	if(result.length!=0){
		alert(result);
	}
}
</script>
<style>
@-webkit-keyframes slideIn {
    from {bottom: -300px; opacity: 0} 
    to {bottom: 0; opacity: 1}
}

@keyframes slideIn {
    from {bottom: -300px; opacity: 0}
    to {bottom: 0; opacity: 1}
}
@-webkit-keyframes fadeIn {
    from {opacity: 0} 
    to {opacity: 1}
}
@keyframes fadeIn {
    from {opacity: 0} 
    to {opacity: 1}
}
</style>
</head>
<body background="/OmniCard/image/index_background.jpg" onload="rollback()">
<form action="login.do" method="post" class="loginForm" style="-webkit-animation-name: slideIn; ">
<table id="tab" style="width: 600px; background-color: white; margin: auto; 
						-webkit-animation-name: fadeIn; -webkit-animation-duration: 1.0s;">
	<thead><tr><td colspan="2"><h1>Omnicard</h1></td><td></td></tr></thead>
	<tbody>
		<tr>
			<td>아이디 : </td><td><div><input type="text" name="id" value=""></div></td>
			<td>비밀번호 : </td><td><div><input type="text" name="pw" value=""></div></td>
		</tr>
		<tr>
			<td colspan="4">
				<div align="center" style="margin: 30px; margin-top: 10px; margin-bottom: 10px;">
				<input type="submit" value="로그인">
				<input type="button" value="회원가입" onclick="javascript:location.href='goRegister.do'">
				</div>
			</td>
		</tr>
	</tbody>
</table>

</form>
</body>
</html>
