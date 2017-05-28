<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style type="text/css">
.button{
	background-color: #99ff66;
	margin: 10px;
	padding: 12px 28px;
	border-radius: 4px;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}
.button:hover{
	background-color: white;
}
.header_head{
	float: left;
	margin: auto;
}
.header_form{
	float: left;
	height: 60px;
	opacity: 50%;
}
.header_menu{
	margin: auto;
	height: 70px;
    width: 65%;
    background: linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
    color: white;
    opacity: 0.95;
    position: relative;
}
.logout_button{
	
}
.login_button{

}
</style>
</head>
<div>
<div align="right">
	<span>
		ID : <input type="text" name="ID">
		<input type="button" class="login_button" value="재로그인" onclick="location.href='login.do'">
	</span><br/>
	<span>
		PW : <input type="text"	name="PW">
		<input type="button" class="logout_button" value="로그아웃" onclick="location.href='logout.do'">
	</span>
</div>
<div class="header_head" align="center">
	<h1>OmniCard</h1>
</div>
<div style="clear: left;"></div>
<div class="header_form">
	Type A <img alt="a" src="/OmniCard/image/card1.jpg" style="height: 58px; width: 58px;">
	Type B <img alt="b" src="/OmniCard/image/card2.jpg" style="height: 58px; width: 58px;">
</div>
<div style="clear: left;"></div>
<div class="header_menu">
	<button class="button" onclick="location.href='mycard.do'">내 명함관리</button>
	<button class="button" onclick="location.href='cardlist.do'">명함목록</button>
	<button class="button" onclick="location.href='myclient.do'">고객목록</button>
	<button class="button" onclick="location.href='getMyInfo.do'">내정보</button>
	<button class="button" onclick="location.href='schedule.do'">스케줄</button>
	<button class="button" onclick="location.href='mybulletin.do'">쪽지확인</button>
</div>
</div>
<div style="clear: left;"></div>
</html>
<!-- height 60px -->
