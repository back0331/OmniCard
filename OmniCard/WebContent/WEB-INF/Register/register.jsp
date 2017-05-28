<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function goPopup(check) {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("jusoPopup_" + check + ".jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
	}
	var arr = new Array();
	var i = 0;
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			check) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		var arr = [ roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2,
				engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, check ];
		for (i = 0; i < arr.length; i++) {
			console.log('param=' + arr[i]);
			console.log('i=' + i);
			document.getElementById("callBackDiv_" + arr[10] + "_" + i).value = arr[i];
		}
	};
	
	function register(){
		document.getElementById("mem_form").submit();
		document.getElementById("addr_home_form").submit();
		document.getElementById("addr_work_form").submit();
	}
</script>
</head>
<body>
	<h1>회원가입하기</h1>
	<form:form commandName="mem_command" id="mem_form" action="mem_register.do">
		<fieldset>
			<legend>기본 정보</legend>
			<ul>
				<p>
				<li><label id="name">이름 : </label><input type="text" id="name"
					name="name"></li>
				</p>
				<p>
				<li><label id="id">아이디 : </label><input type="text" id="id"
					name="id"></li>
				</p>
				<nav>
					<sub>알파벳 4글자 이상입니다</sub>
				</nav>
				<p>
				<li><label id="pw">비밀번호 : </label><input type="text" id="pw"
					name="pw"></li>
				</p>
				<nav>
					<sub>숫자와 특수문자 필수!</sub>
				</nav>
				<p>
				<li><label id="email">이메일 : </label><input type="text"
					id="email" name="email"></li>
				</p>
				<p>
				<li><label id="cel_tel">휴대폰번호 : </label><input type="text"
					id="cel_tel" name="cel_tel"></li>
				</p>
				<li><label id="com_tel">회사번호 : </label><input type="text"
					id="com_tel" name="com_tel"></li>
			</ul>
		</fieldset>
	</form:form>
	<form:form commandName="addr_home_command" id="addr_home_form" action="addr_home_register.do">
		<fieldset>
			<input type="button" onClick="goPopup('home');" value="사는 곳 주소 입력하기" />
			<div id="list"></div>
			<div id="local_callBackDiv">
				<table>
					<tr>
						<td>도로명주소 전체</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_0" value="" name="0" /></td>
					</tr>
					<tr>
						<td>도로명주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_1" value="" name="1" /></td>
					</tr>
					<tr>
						<td>고객입력 상세주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_2" value="" name="2" /></td>
					</tr>
					<tr>
						<td>참고주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_3" value="" name="3" /></td>
					</tr>
					<tr>
						<td>영문 도로명주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_4" value="" name="4" /></td>
					</tr>
					<tr>
						<td>지번</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_5" value="" name="5" /></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_6" value="" name="6" /></td>
					</tr>
					<tr>
						<td>행정구역코드</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_7" value="" name="7" /></td>
					</tr>
					<tr>
						<td>도로명코드</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_8" value="" name="8" /></td>
					</tr>
					<tr>
						<td>건물관리번호</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_home_9" value="" name="9" /></td>
					</tr>
				</table>
			</div>
		</fieldset>
	</form:form>
	<form:form commandName="addr_work_command" id="addr_work_form" action="addr_work_register.do">
		<fieldset>
			<input type="button" onClick="goPopup('work');" value="일하는 곳 주소 입력하기" />
			<div id="list"></div>
			<div id="road_callBackDiv">
				<table>
					<tr>
						<td>지번주소 전체</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_0" value="" name="0" /></td>
					</tr>
					<tr>
						<td>지번주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_1" value="" name="1" /></td>
					</tr>
					<tr>
						<td>고객입력 상세주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_2" value="" name="2" /></td>
					</tr>
					<tr>
						<td>참고주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_3" value="" name="3" /></td>
					</tr>
					<tr>
						<td>영문 지번주소</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_4" value="" name="4" /></td>
					</tr>
					<tr>
						<td>지번</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_5" value="" name="5" /></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_6" value="" name="6" /></td>
					</tr>
					<tr>
						<td>행정구역코드</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_7" value="" name="7" /></td>
					</tr>
					<tr>
						<td>도로명코드</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_8" value="" name="8" /></td>
					</tr>
					<tr>
						<td>건물관리번호</td>
						<td><input type="text" style="width: 500px;"
							id="callBackDiv_work_9" value="" name="9" /></td>
					</tr>
				</table>
			</div>
		</fieldset>
		<input type="submit" value="회원가입">
		<sub>회원가입은 구현하지 않았습니다.</sub>
	</form:form>
	
</body>
<script>
	
</script>
</html>