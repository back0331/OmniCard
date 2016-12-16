<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
var arr = new Array();
var i = 0;
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	var arr = [roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn];
	for (i = 0; i < arr.length; i++) {
		console.log('param='+arr[i]);
		console.log('i='+i);
		document.local.i.value = arr[i];
		document.area.i.value = arr[i];
	}
	// while(arr){document.local.i.value = arr[i];	document.area.i.value = arr[i];	i++;} i=0;
};
</script>
</head>
<body>
<h1>회원가입하기</h1>
<form:form commandName="command" action="register.do" onsubmit="check()">
<fieldset>
<legend>기본 정보</legend><ul>
<p><li><label id="name">이름 : </label><input type="text" id="name" name="name"></li></p>
<p><li><label id="id">아이디 : </label><input type="text" id="id" name="id"></li></p><nav><sub>알파벳 4글자 이상입니다</sub></nav>
<p><li><label id="pw">비밀번호 : </label><input type="text" id="pw" name="pw"></li></p><nav><sub>숫자와 특수문자 필수!</sub></nav>
<p><li><label id="email">이메일 : </label><input type="text" id="email" name="email"></li></p>
<p><li><label id="cel_tel">휴대폰번호 : </label><input type="text" id="cel_tel" name="cel_tel"></li></p>
<li><label id="com_tel">회사번호 : </label><input type="text" id="com_tel" name="com_tel"></li></ul>
</fieldset>

<fieldset>
<legend>주거지 주소</legend><ul>
<li><label id="addr1">주소1 : </label>
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
</select></ul>
</fieldset>

<fieldset>
<legend>근무지 주소</legend><ul>
<li><label id="addr1">주소1 : </label>
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
</select></ul>
</fieldset>

<input type="button" value="회원가입"><sub>회원가입은 구현하지 않았습니다.</sub>

</form:form>
<fieldset name='field' id='field'>
<form name="local" id="local" method="post">

	<input type="button" onClick="goPopup();" value="팝업_domainChk"/>
	<div id="list"></div>
	<div id="callBackDiv">
		<table>
			<tr><td>도로명주소 전체(포멧)</td><td><input type="text"  style="width:500px;" id="0" value="" name="0" /></td></tr>
			<tr><td>도로명주소           </td><td><input type="text"  style="width:500px;" id="1" value="" name="1" /></td></tr>
			<tr><td>고객입력 상세주소    </td><td><input type="text"  style="width:500px;" id="2" value="" name="2" /></td></tr>
			<tr><td>참고주소             </td><td><input type="text"  style="width:500px;" id="3" value="" name="3" /></td></tr>
			<tr><td>영문 도로명주소      </td><td><input type="text"  style="width:500px;" id="4" value="" name="4" /></td></tr>
			<tr><td>지번                 </td><td><input type="text"  style="width:500px;" id="5" value="" name="5" /></td></tr>
			<tr><td>우편번호             </td><td><input type="text"  style="width:500px;" id="6" value="" name="6" /></td></tr>
			<tr><td>행정구역코드        </td><td><input type="text"  style="width:500px;" id="7" value="" name="7" /></td></tr>
			<tr><td>도로명코드          </td><td><input type="text"  style="width:500px;" id="8" value="" name="8" /></td></tr>
			<tr><td>건물관리번호        </td><td><input type="text"  style="width:500px;" id="9" value="" name="9" /></td></tr>
		</table>
	</div>

</form>
<form name="road" id="road" method="post">

	<input type="button" onClick="goPopup();" value="팝업_domainChk"/>
	<div id="list"></div>
	<div id="callBackDiv">
		<table>
			<tr><td>도로명주소 전체(포멧)</td><td><input type="text"  style="width:500px;" id="0" value="" name="0" /></td></tr>
			<tr><td>도로명주소           </td><td><input type="text"  style="width:500px;" id="1" value="" name="1" /></td></tr>
			<tr><td>고객입력 상세주소    </td><td><input type="text"  style="width:500px;" id="2" value="" name="2" /></td></tr>
			<tr><td>참고주소             </td><td><input type="text"  style="width:500px;" id="3" value="" name="3" /></td></tr>
			<tr><td>영문 도로명주소      </td><td><input type="text"  style="width:500px;" id="4" value="" name="4" /></td></tr>
			<tr><td>지번                 </td><td><input type="text"  style="width:500px;" id="5" value="" name="5" /></td></tr>
			<tr><td>우편번호             </td><td><input type="text"  style="width:500px;" id="6" value="" name="6" /></td></tr>
			<tr><td>행정구역코드        </td><td><input type="text"  style="width:500px;" id="7" value="" name="7" /></td></tr>
			<tr><td>도로명코드          </td><td><input type="text"  style="width:500px;" id="8" value="" name="8" /></td></tr>
			<tr><td>건물관리번호        </td><td><input type="text"  style="width:500px;" id="9" value="" name="9" /></td></tr>
		</table>
	</div>

</form>
</fieldset>
</body>
<script>

</script>
</html>