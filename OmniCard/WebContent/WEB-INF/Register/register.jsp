<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form:form commandName="command" action="register.do" onsubmit="check()">
<label id="name">이름 : </label><input type="text" id="name" name="name">
<label id="id">아이디 : </label><input type="text" id="id" name="id"><span>알파벳 4글자 이상입니다</span>
<label id="pw">비밀번호 : </label><input type="text" id="pw" name="pw"><span>숫자와 특수문자 필수!</span>

<label id="addr1">주소1 : </label>
<select name="addr1" id="addr1">
	<c:forEach items="${address.addr1 }" var="addr1">
		<option value=${addr1 } onclick="getAddr2(${addr1 })">
	</c:forEach>
</select>
<label id="addr2">주소2 : </label>
<select name="addr2" id="addr2">
	<c:forEach items="${address.addr2 }" var="addr2">
		<option value=${addr2 } onclick="getAddr3(${addr2})">
	</c:forEach>
</select>
<label id="addr3">주소3 : </label>
<select name="addr3" id="addr3">
	<c:forEach items="${address.addr3 }" var="addr3">
		<option value=${addr3 }>
	</c:forEach>
</select>
<label id="zip_code">우편번호 : </label>
<select name="zip_code" id="zip_code">
	<c:forEach items="${zip_code }" var="zip_code">
		<option value=${zip_code }>
	</c:forEach>
</select>

<label id="cel_tel">휴대폰번호 : </label><input type="text" id="cel_tel" name="cel_tel"><span></span>
<label id="com_tel">회사번호 : </label><input type="text" id="com_tel" name="com_tel"><span></span>
<label id="email">이메일 : </label><input type="text" id="email" name="email"><span></span>
</form:form>
</body>
</html>