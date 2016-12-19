<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function backward(name, no){
		var cardno = no;
		var towho = name;
		var fromwho = '${id}';
		var modal = document.getElementById('myModal');
		var card_no = document.getElementById('card_no');
		var modal_header = document.getElementById('modal-header');
		var modal_footer = document.getElementById('modal-footer');
		modal.style.display = "block";
		card_no.value = cardno;
		modal_header.value = towho;
		modal_footer.value = fromwho;
	};
	function closebutton(){
		var modal = document.getElementById('myModal');
		modal.style.display = "none";
	}
	window.onclick = function(event) {
		var modal = document.getElementById('myModal');
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	};
	$(document).ready(function(){
		var count = ${count};
		for(var i=1; count>=i; i++){
			if(i==count){
				$("#paging").append("<a href=>"+i+"</a>");
			}else{
				$("#paging").append("<a href=>"+i+"</a> |");
			}
		};
	});
</script>
</head>
<body>

<!-- Cards -->
<c:forEach var="cards" items="${cards }" varStatus="status" step="1">

	<c:if test="${status.count%2!=0}">
	<input type="radio" name="delete" style="float: left;" value="${cards.card_no }">
	<div class='${cards.form_code }' style="float: left;" onclick="backward('${cards.client_id}', '${cards.card_no }')"><br>
		<span class="title">${cards.client_name }<br>${cards.com_name }<br>${cards.client_level }</span><br>
		<span class="body">주소 : ${cards.addr} ${cards.zip } ${cards.addr_desc }
		<br>홈페이지 주소 : ${cards.web_addr }</span><br>
		<span class="footer">휴대전화 : ${cards.cel_tel }<br>
							회사전화 : ${cards.com_tel }<br>
							email : ${cards.email }</span><br>
	</div>
	</c:if>
	
	<c:if test="${status.count%2==0}">
	<input type="radio" name="delete" style="float: left;">
	<div class='${cards.form_code }' style="float: left;" onclick="backward('${cards.client_id}', '${cards.card_no }')"><br>
		<span class="title">${cards.client_name }<br>${cards.com_name }<br>${cards.client_level }</span><br>
		<span class="body">주소 : ${cards.addr} ${cards.zip } ${cards.addr_desc }
		<br>홈페이지 주소 : ${cards.web_addr }</span><br>
		<span class="footer">휴대전화 : ${cards.cel_tel }<br>
							회사전화 : ${cards.com_tel }<br>
							email : ${cards.email }</span><br>
	</div>
	<div style="clear: left;"></div>
	<br>
	</c:if>
	
	<div></div>
</c:forEach>
<div style="clear: left; margin-left: 68px;" id="paging"></div>
<!-- Cards end -->

<!-- The Modal -->
<div id="myModal" class="modal">
	<form method="post" action="send.do">
		<input type="hidden" value="" name="card_no" id="card_no">
		<!-- Modal header -->
		<div class="modal-header">
			<button onclick="closebutton()">X</button>
			<h1>Memo...........</h1>
			<h2>To. <input type="text" value="" name="towho" id="modal-header" readonly="readonly"></h2>
		</div>
		<!-- Modal content -->
		<div class="modal-content">
			<textarea name="contents" cols="20" autofocus="autofocus"></textarea>
		</div>
		<div class="modal-footer">
			<h3>From. <input type="text" value="" name="fromwho" id="modal-footer" readonly="readonly"></h3>
			<input type="submit" value="send">
		</div>
	</form>
</div>
<!-- The Modal end -->

</body>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/CardCSS.css">
</html>