<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/InfoCSS.css">
<title>Insert title here</title>
</head>
<body>
<div>
<h3>회원정보 수정</h3>
<form:form commandName="command" action="infoupdate.do">
<fieldset>
<legend>성함(개명함?)</legend>
<input type="text" name="name" value="${command.name }">
</fieldset>
<fieldset>
<legend>비밀번호</legend>
변경 전 : <input type="text" name="pw1" value="${command.pw }">
변경 후 : <input type="text" name="pw">
</fieldset>
<fieldset>
<legend>주소</legend>
주소 : <input type="text" name="addr1" value="${command.addr1 }"> <input type="text" name="addr2" value="${command.addr2 }"> <input type="text" name="addr3" value="${command.addr3 }"><br>
우편번호 : <input type="text" name="zip_code1" value="${command.zip_code1 }">-<input type="text" name="zip_code2" value="${command.zip_code2 }">
</fieldset>
<fieldset>
<legend>전화번호</legend>
휴대폰번호 : <input type="text" name="cel_tel" value="${command.cel_tel }">
근무지 전화번호 : <input type="text" name="com_tel" value="${command.com_tel }">
</fieldset>
<fieldset>
<legend>이메일</legend>
<input type="text" name="email" value="${command.email }">
</fieldset>
<input type="submit" value="수정완료">
</form:form>
</div>
</body>
</html>