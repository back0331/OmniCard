<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="float: left; margin-left: 60px;">
<div class="header_head"><h1>OmniCard</h1></div>
<div class="header_menu" style="margin-left: 270px;">
	<button class="button" onclick="location.href='mycard.do'">내 명함관리</button>
	<button class="button" onclick="location.href='cardlist.do'">명함목록</button>
	<button class="button" onclick="location.href='myclient.do'">고객목록</button>
	<button class="button" onclick="location.href='getmyInfo.do'">내정보</button>
	<button class="button" onclick="location.href='schedule.do'">스케줄</button>
	<button class="button" onclick="location.href='mybulletin.do'">쪽지확인</button>
</div>
</div>
<div style="float: left; height: 60px;">
Type A <img alt="a" src="/OmniCard/image/card1.jpg" style="height: 58px; width: 58px;">
Type B <img alt="b" src="/OmniCard/image/card2.jpg" style="height: 58px; width: 58px;">
</div>
<div style="clear: left;"></div>
<!-- height 60px -->
<link rel="stylesheet" type="text/css" href="/OmniCard/css/MainCSS.css">
