<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/InfoCSS.css">
<title>Insert title here</title>
<script>
function insertcom(){
	var field = document.getElementById('field').style.display;
	if(field==='none'){
		field = 'block';
	}else if(field==='block'){
		field = 'none';
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
주소 : <input type="text" name="addr1" value="${mem_address.area_addr1+' '+mem_address.area_addr2+' '+mem_address.area_addr3+' '+mem_address.area_zip+' '+mem_address.area_desc}"> 
	<input type="text" name="addr1" value="${mem_address.road_addr1+' '+mem_address.road_addr2+' '+mem_address.road_addr3+' '+mem_address.road_zip+' '+mem_address.road_no+' '+mem_address.road_desc}"><br>
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

<c:if test="${company!==null }">
<input type="checkbox" onchange="insertcom()">회사 정보를 입력/수정하시겠습니까?
<div id="field" style="display: none;">
<fieldset>
<legend>회사 정보</legend>
회사 이름 : <input type="text" name="com_tel" value="${company.com_tel }"><br>
대표 이름 : <input type="text" name="com_tel" value="${company.com_tel }"><img alt="돋보기" src="/OmniCard/image/magnifier.png" onclick="search()"><sub>검색기능으로 빠르게 정보를 입력해보세요.</sub><br>
회사 전화번호 : <input type="text" name="com_tel" value="${company.com_tel }"><br>
회사 팩스번호 : <input type="text" name="com_tel" value="${company.com_tel }"><br>
회사 주소 : <input type="text" name="addr1" value="${com_address.area_addr1+' '+com_address.area_addr2+' 'com_address.area_addr3+' 'com_address.area_zip+' '+com_address.area_desc}"> 
	<input type="text" name="addr1" value="${com_address.area_addr1+' '+com_address.area_addr2+' 'com_address.area_addr3+' 'com_address.area_zip+' '+com_address.area_desc}"><br>
</fieldset>
</div>
</c:if>

<input type="submit" value="수정완료">
</form>
</div>

</body>
</html>