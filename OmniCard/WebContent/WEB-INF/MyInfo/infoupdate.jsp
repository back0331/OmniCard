<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/InfoCSS.css">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	console.log('${info}');
	console.log('${mem_addr}');
	console.log('${company}');
})
function insertcom(){
	var field = document.getElementById('field');
	if(field.style.display=='none'){
		field.style.display = 'block';
	}else if(field.style.display=='block'){
		field.style.display = 'none';
	}
}
</script>
</head>
<body>
<div>
<h3>회원정보 수정</h3>
<form method="post" action="infoupdate.do">
<input type="hidden" name="mem_no" value="${info.mem_no }">
<input type="hidden" name="com_no" value="${info.com_no }">
<fieldset>
<legend>성함(개명함?)</legend>
<input type="text" name="name" value="${info.name }">
</fieldset>
<fieldset>
<legend>비밀번호</legend>
변경 전 : <input type="text" name="pw1" value="${info.pw }">
변경 후 : <input type="text" name="pw">
</fieldset>
<fieldset>
<legend>주소</legend>
주소 : <input type="text" name="area_addr1" value="${mem_addr.area_addr1}"> <input type="text" name="area_addr2" value="${mem_addr.area_addr2}"> <input type="text" name="area_addr3" value="${mem_addr.area_addr3}"> <input type="text" name="area_zip" value="${mem_addr.area_zip}"> <input type="text" name="area_desc" value="${mem_addr.area_desc}">
	<input type="text" name="road_addr1" value="${mem_addr.road_addr1}"> <input type="text" name="road_addr2" value="${mem_addr.road_addr2}"> <input type="text" name="road_addr3" value="${mem_addr.road_addr3}"> <input type="text" name="road_no" value="${mem_addr.road_no}"> <input type="text" name="road_desc" value="${mem_addr.road_desc}"><br>
</fieldset>
<fieldset>
<legend>전화번호</legend>
집전화번호 : <input type="text" name="cel_tel" value="${info.home_tel }"><br><br>
휴대폰번호 : <input type="text" name="cel_tel" value="${info.cel_tel }"><br><br>
</fieldset>
<fieldset>
<legend>이메일</legend>
<input type="text" name="email" value="${info.email }">
</fieldset>

<input type="checkbox" onclick="insertcom()">회사 정보를 입력/수정하시겠습니까?
<div id="field" style="display: none;">
<fieldset>
<legend>회사 정보</legend>
<input type="hidden" name="com_no" value="${company.com_no }">
회사 이름 : <input type="text" name="com_tel" value="${company.com_name }"><br>
대표 이름 : <input type="text" name="ceo_name" value="${company.com_tel }"><img alt="돋보기" src="/OmniCard/image/magnifier.png" onclick="search()"><sub>검색기능으로 빠르게 정보를 입력해보세요.</sub><br>
회사 전화번호 : <input type="text" name="com_tel" value="${company.com_tel }"><br>
회사 팩스번호 : <input type="text" name="com_fax" value="${company.com_tel }"><br>
회사 주소 : <input type="text" name="area_addr1" value="${com_addr.area_addr1}"> <input type="text" name="area_addr2" value="${com_addr.area_addr2}"> <input type="text" name="area_addr3" value="${com_addr.area_addr3}"> <input type="text" name="area_zip" value="${com_addr.area_zip}"> <input type="text" name="area_desc" value="${com_addr.area_desc}">
	<input type="text" name="road_addr1" value="${com_addr.road_addr1}"> <input type="text" name="road_addr2" value="${com_addr.road_addr2}"> <input type="text" name="road_addr3" value="${com_addr.road_addr3}"> <input type="text" name="road_no" value="${com_addr.road_no}"> <input type="text" name="road_desc" value="${com_addr.road_desc}"><br>
</fieldset>
</div>

<input type="submit" value="수정완료">
</form>
</div>

</body>
</html>