<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
function search(){
	var modal = document.getElementById('Modal');
	modal.style.display = "block";
	$.ajax({
		type:"post"
		,url:"search.do" 
		,data:{client_name:document.getElementById("name").value}
		,dataType:"json"
		,success:function(args){
			var source = args.memcount*1;
			var object;
			var i = 1;
			for(i; i<12; i++){
				console.log(document.getElementById("name").value);
				console.log(args.searchmem[0]);
				document.getElementById('memlist').innerHTML="<a href=#>"+args.searchmem[i-1]+"</a><br>";
			}
			object = document.getElementsByClassName("memcount");
			for(i; i<=source; i++){
				modal.memcount.innerHTML='<a href=#>'+i+'</a>';
			}
		}
	});
}
</script>

<div class="footer_background">

<hr>

<div style="text-align: left">
<form action="insertcard.do" method="post">
고객 성함 : <input type="text" id="name" name="client_name" size="5"/>
		<img alt="돋보기" src="/OmniCard/image/magnifier.png" onclick="search()"><sub>검색기능으로 빠르게 정보를 입력해보세요.</sub>
명함 디자인 : <select name="form_code">
			<option value="a">A</option>
			<option value="b">B</option>
			<option value="c">C</option>
			<option value="d">D</option>
		</select><br/>
회사명 : <input type="text" name="com_name" class="searchmem" id="1" readonly="readonly"/>&#8195;&#8195;&#8195;
직급 : <input type="text" name="client_level" class="searchmem" id="2" readonly="readonly"/><br/>
주소 : <input type="text" name="area_addr" class="searchmem" id="3" readonly="readonly"/> <input type="text" name="zip" class="searchmem" size="5" readonly="readonly"/> <input type="text" name="addr_desc" class="searchmem" readonly="readonly"/><br/>
회사주소 : <input type="text" name="addr" class="searchmem" id="4" readonly="readonly"/> <input type="text" name="zip" class="searchmem" size="5" readonly="readonly"/> <input type="text" name="addr_desc" class="searchmem" readonly="readonly"/><br/>
홈페이지 : <input type="text" name="web_addr" class="searchmem" id="5" readonly="readonly"/><br/>
휴대폰번호 : <input type="text" name="cel_tel" class="searchmem" id="6" readonly="readonly"/>&#8195;
회사번호 : <input type="text" name="com_tel" class="searchmem" id="7" readonly="readonly"/>&#8195;
이메일 : <input type="text" name="email" class="searchmem" id="8" readonly="readonly"/><br/>
<input type="hidden" name="client_id" class="searchmem" id="9"/>
<input type="hidden" name="client_id" class="searchmem" id="10" value="${mem_id }"/>
<input type=hidden name="com_no" class="searchmem" id="11"/>
<input type="submit" value="명함등록"/>
</form>
</div>

<!-- table needed : company, member, address -->

<!-- The Modal -->
<div id="Modal" class="modal">
	<form method="post" action="send.do">
		<input type="hidden" value="" name="card_no" id="card_no">
		<!-- Modal header -->
		<div class="modal-header">
			<button onclick="closebutton()">X</button>
			<h1>Memo...........</h1>
			<h2>To. <input type="text" value="" name="towho" id="modal-header" class="modal_header" readonly="readonly"></h2>
		</div>
		<!-- Modal content -->
		<div class="modal-content">
			<div class="memlist"></div>
			<div class="memcount"></div>
		</div>
		<div class="modal-footer">
			<h3>From. <input type="text" value="" name="fromwho" id="modal-footer" class="modal_footer" readonly="readonly"></h3>
			<input type="submit" value="send">
		</div>
	</form>
</div>
<!-- The Modal end -->

<div style="text-align: right">
사업자 번호 : ******************<br>
사업주 : ***<br>
전화번호(문의) : **********<br>
위치 : ***************************************<br>
Copyright....
</div>
</div>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/CardCSS.css">