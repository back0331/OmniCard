<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
function search(){
	var client_name = document.getElementById("client_name").value;
	
}
</script>

<div class="footer_background">

<hr>

<div style="text-align: left">
<form:form action="insertcard.do" method="post" commandName="command" modelAttribute="command" >
고객 성함 : <form:input path="client_name" name="client_name" size="5"/>
		<img alt="돋보기" src="/OmniCard/image/magnifier.png" onchange="search()">&#8195;&#8195;&#8195;
명함 디자인 : <form:select path="form_code" name="form_code">
			<option value="a">A</option>
			<option value="b">B</option>
			<option value="c">C</option>
			<option value="d">D</option>
		</form:select><br/>
회사명 : <form:input path="com_name" name="com_name" readonly="true"/>&#8195;&#8195;&#8195;
직급 : <form:input path="client_level" name="client_level" readonly="true"/><br/>
주소 : <form:input path="addr" name="addr" readonly="true"/> <form:input path="zip" name="zip" size="5" readonly="true"/> <form:input path="addr_desc" name="addr_desc" readonly="true"/><br/>
홈페이지 : <form:input path="web_addr" name="web_addr" readonly="true"/><br/>
휴대폰번호 : <form:input path="cel_tel" name="cel_tel" readonly="true"/>&#8195;
회사번호 : <form:input path="com_tel" name="com_tel" readonly="true"/>&#8195;
이메일 : <form:input path="email" name="email" readonly="true"/><br/>
<form:input path="client_id" name="client_id" cssStyle="display: none;"/>
<form:input path="mem_id" name="client_id" value="${mem_id }" cssStyle="display: none;"/>
<form:input path="com_no" name="com_no" cssStyle="display: none;"/>
<input type="submit" value="명함등록"/>
</form:form>
</div>

<div style="text-align: right">
사업자 번호 : ******************<br>
사업주 : ***<br>
전화번호(문의) : **********<br>
위치 : ***************************************<br>
Copyright....
</div>
</div>