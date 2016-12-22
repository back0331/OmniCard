<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var count = ${count*1};
	for(var i=1; count>=i; i++){
		if(i==count){
			$("#table").append("<a href=myclient.do?pageNum="+i+">"+i+"</a>");
		}else{
			$("#table").append("<a href=myclient.do?pageNum="+i+">"+i+"</a> | ");
		}
	}
});
</script>
</head>
<body>
<table id="table" border="1">
	<tr>
		  <td>이름</td><td>아이디</td><td>주소</td><td>우편번호</td><td>휴대폰번호</td><td>회사전화</td><td>이메일</td>
	</tr>
	<c:forEach items="${clients }" var="clients" varStatus="status">
	<tr>
		<td>${clients.name }</td><td>${clients.email}</td><td>${clients.cel_tel }</td><td>${clients.com_tel }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>