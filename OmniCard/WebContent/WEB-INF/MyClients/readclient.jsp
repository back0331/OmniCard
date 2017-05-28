<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/ClientsCSS.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var clients = $("#form").serialize();
	var body_div = $("#readclient_body");
})

// function sorting(){
// 	var search_subject = document.getElementById('search_subject').value;
// 	var search_keyword = document.getElementById('search_keyword').value;
// 	var rownum=0;
// 	alert(clients);
	
// 	for(var search_line in clients){
// 		for(var idx=0; idx<search_subject; idx++){
// 			search_line.substring(search_line.indexOf('&')+1);
// 			console.log("search_line's substring = "+search_line);
// 		}
// 		search_line.substring(0, search_line.indexOf('&'));
// 		console.log("search_line's result = "+search_line);
		
// 		rownum++;
// 		if(search_line.indexOf(search_keyword))
// 			document.getElementById('client_tab_body'+rownum).style.display='null';
// 		else                                       
// 			document.getElementById('client_tab_body'+rownum).style.display='none';
// 	}
// }

function sorting(){
	
}

function search_all_member(){
	window.open();
}

function visibleOrNot(){
	
}

function backward(){
	window.open();
}
</script>
</head>
<body>
<div id="readclient_header" align="center">
<table class="search_table">
	<tr>
		<td>고객님께 고객맺길 제안해보세요!!</td>
		<td>
			<select id="search_subject_propose">
				<option value="1">이름</option>
				<option value="2">전화번호</option>
				<option value="3">휴대폰번호</option>
				<option value="4">회사전화</option>
				<option value="5">이메일</option>
				<option value="6">회사명</option>
				<option value="7">회사팩스번호</option>
				<option value="8">회사지번주소</option>
				<option value="9">회사도로명주소</option>
			</select>
		</td>
		<td>
			<input type="text" id="search_keyword_propose">
			<input type="button" value="제안하기" onclick="search_all_member()">
		</td>
	</tr>
	<tr>
		<td>
			등록된 고객을 찾아보세요!
		</td>
		<td>
			<select id="search_subject" onchange="sorting()">
				<option value="1">이름</option>
				<option value="2">전화번호</option>
				<option value="3">휴대폰번호</option>
				<option value="4">회사전화</option>
				<option value="5">이메일</option>
				<option value="6">회사명</option>
				<option value="7">회사팩스번호</option>
				<option value="8">회사지번주소</option>
				<option value="9">회사도로명주소</option>
			</select>
		</td>
		<td>
			<input type="text" id="search_keyword" onchange="sorting()">
			<input type="button" value="고객찾기" onclick="sorting()">
		</td>
	</tr>
</table>
</div>
<div id="readclient_body" align="center">
<form id="form">
<table id="table" class="client_table" <%--style="padding-left: 40px;"--%>>
	<tr class="client_tab_header" bgcolor="#ccffff">
		  <td id="name">
<!-- 		  	<select name="name" onchange="sorting(name)"> -->
<%-- 		  		<c:forEach items="${clients.name }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	이름
		  </td>
		  <td id="home_tel">
<!-- 		  	<select name="home_tel" onchange="sorting(home_tel)"> -->
<%-- 		  		<c:forEach items="${clients.home_tel }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	전화번호
		  </td>
		  <td id="cel_tel">
<!-- 		  	<select name="cel_tel" onchange="sorting(cel_tel)"> -->
<%-- 		  		<c:forEach items="${clients.cel_tel }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	휴대폰번호
		  </td>
		  <td id="com_tel">
<!-- 		  	<select name="com_tel" onchange="sorting(com_tel)"> -->
<%-- 		  		<c:forEach items="${clients.com_tel }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	회사전화
		  </td>
		  <td id="email">
<!-- 		  	<select name="email" onchange="sorting(email)"> -->
<%-- 		  		<c:forEach items="${clients.email }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	이메일
		  </td>
		  <td id="com_name">
<!-- 		  	<select name="com_name" onchange="sorting(com_name)"> -->
<%-- 		  		<c:forEach items="${clients.com_name }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	회사명
		  </td>
		  <td id="com_fax">
<!-- 		  	<select name="com_fax" onchange="sorting(com_fax)"> -->
<%-- 		  		<c:forEach items="${clients.com_fax }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	회사팩스번호
		  </td>
		  <td id="area_addr">
<!-- 		  	<select name="area_addr" onchange="sorting(area_addr)"> -->
<%-- 		  		<c:forEach items="${clients.area_addr }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	회사지번주소
		  </td>
		  <td id="road_addr">
<!-- 		  	<select name="road_addr" onchange="sorting(road_addr)"> -->
<%-- 		  		<c:forEach items="${clients.road_addr }"><option></option></c:forEach> --%>
<!-- 		  	</select> -->
		  	회사 도로명주소
		  </td>
	</tr>
	
	<c:forEach items="${clients }" var="clients" varStatus="status">
		<tr class="client_tab_body" bgcolor="#e6ffff" id="client_tab_body${status.count }" <%--style="display: null;"--%>>
			<td class="client_tab_body_name">
				${clients.name }
				<input type="hidden" name="name${stauts.count }" value="${clients.name }">
			</td>
			<td>
				${clients.home_tel }
				<input type="hidden" name="home_tel${stauts.count }" value="${clients.home_tel }">
			</td>
			<td>
				${clients.cel_tel }
				<input type="hidden" name="cel_tel${stauts.count }" value="${clients.cel_tel }">
			</td>
			<td>
				${clients.com_tel }
				<input type="hidden" name="com_tel${stauts.count }" value="${clients.com_tel }">
			</td>
			<td>
				${clients.email }
				<input type="hidden" name="email${stauts.count }" value="${clients.email }">
			</td>
			<td>
				${clients.com_name }
				<input type="hidden" name="com_name${stauts.count }" value="${clients.com_name }">
			</td>
			<td>
				${clients.com_fax }
				<input type="hidden" name="com_fax${stauts.count }" value="${clients.com_fax }">
			</td>
			<td>
				${clients.area_addr1} ${clients.area_addr2}${clients.area_addr3}${clients.area_zip}${clients.area_desc}
				<input type="hidden" name="area_addr${stauts.count }" value="${clients.area_addr1}">
			</td>
			<td>
				${clients.road_addr1} ${clients.road_addr2}${clients.road_addr3}${clients.road_no}${clients.road_desc}
				<input type="hidden" name="road_addr${stauts.count }" value="${clients.road_addr1}">
			</td>
		</tr>
	</c:forEach>
</table>
</form>
</div>
<!-- The Modal -->
<div id="myModal" class="modal" style="display: none;">
	<form method="post" action="send.do">
		<input type="hidden" value="" name="card_no" id="card_no">
		<!-- Modal header -->
		<div class="mem_header">
			<button onclick="closebutton()">X</button>
			<h1>Memo...........</h1>
			<h2>To. <input type="text" value="" name="towho" id="modal-header" readonly="readonly"></h2>
		</div>
		<!-- Modal content -->
		<div class="mem_content">
			<textarea name="contents" cols="85" autofocus="autofocus"></textarea>
		</div>
		<div class="mem_footer">
			<h2>From. <input type="text" value="" name="fromwho" id="modal-footer" readonly="readonly"></h2>
			<input type="submit" value="send">
		</div>
	</form>
</div>
<!-- The Modal end -->
</body>
</html>