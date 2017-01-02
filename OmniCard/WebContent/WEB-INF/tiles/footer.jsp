<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
function search(){
	var modal = document.getElementById('footerModal');
	modal.style.display = "block";
	$.ajax({
		type:"post"
		,url:"search.do" 
		,data:{client_name:document.getElementById("name").value}
		,dataType:"json"
		,success:function(args){
			var source;
			var i = 0;
			for(i; i<args.searchmem.length; i++){
				var array = new Array();
				for(var source in args.searchmem[i]){
					array.push(source);
				}
				document.getElementById('memlist').innerHTML='<a href=# onclick=ins('+array+')>'+args.searchmem[i].name+
				'</a> '+args.searchmem[i].mem_level+' '+args.searchmem[i].com_name+'<hr>';
			}
			for(i=1; i<=source/10; i++){
				document.getElementById("memcount").innerHTML='<a href=#>'+i+'</a>';
			}
		}
	});
}
function ins(array){
	console.log("yeah");
	var i = 1;
	for(var source in array){
		document.getElementById(i).value=source;
		i++;
	}
}
</script>

<div class="footer_background">

<hr>

<div style="text-align: left">
<form action="insertcard.do" method="post">
고객 성함 : <input type="text" id="name" name="name" size="5"/>
		<img alt="돋보기" src="/OmniCard/image/magnifier.png" onclick="search()"><sub>검색기능으로 빠르게 정보를 입력해보세요.</sub>
명함 디자인 : <select name="form_code">
			<option value="a">A</option>
			<option value="b">B</option>
			<option value="c">C</option>
			<option value="d">D</option>
		</select><br/>
회사명 : <input type="text" name="com_name" class="searchmem" id="1" readonly="readonly"/>&#8195;&#8195;&#8195;
직급 : <input type="text" name="mem_level" class="searchmem" id="2" readonly="readonly"/><br/>
회사주소 : <input type="text" name="addr" class="searchmem" id="4" readonly="readonly"/> <input type="text" name="zip" class="searchmem" size="5" readonly="readonly"/> <input type="text" name="addr_desc" class="searchmem" readonly="readonly"/><br/>
홈페이지 : <input type="text" name="web_addr" class="searchmem" id="5" readonly="readonly"/><br/>
휴대폰번호 : <input type="text" name="cel_tel" class="searchmem" id="6" readonly="readonly"/>&#8195;
회사번호 : <input type="text" name="com_tel" class="searchmem" id="7" readonly="readonly"/>&#8195;
이메일 : <input type="text" name="email" class="searchmem" id="8" readonly="readonly"/><br/>
<input type="hidden" name="id" class="searchmem" id="10"/>
<input type=hidden name="com_no" class="searchmem" id="11"/>
<input type="submit" value="명함등록"/>
</form>
</div>

<!-- table needed : company, member, address -->

<!-- The Modal -->
<div id="footerModal" class="modal">
	<form method="post" action="send.do" class="form">
		<input type="hidden" value="" name="card_no" id="card_no">
		<!-- Modal header -->
		<div class="modal_header">
			<h1>검색결과</h1>
		</div>
		<!-- Modal content -->
		<div class="modal_content">
			<div id="memlist"></div>
			<div id="memcount"></div>
		</div>
		<div class="modal_footer">
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