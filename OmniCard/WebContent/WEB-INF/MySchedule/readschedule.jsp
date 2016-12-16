<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/OmniCard/css/ScheduleCSS.css">


<script>
function leapyear(){
	var date = new Date();
	var day29 = document.getElementById("29");
	var day30 = document.getElementById("30");
	var day31 = document.getElementById("31");
	switch(date.getMonth()){
		//29
		case 1:
			if((date.getFullYear())%4==0 || (date.getFullYear())%400==0){
				day30.style.color="#b3b3b3";
				day31.style.color="#b3b3b3";
			}else if((date.getFullYear())%100==0){
				day29.style.color="#b3b3b3";
				day30.style.color="#b3b3b3";
				day31.style.color="#b3b3b3";
			};
			break;
		//30
		case 3:
		case 5:
		case 8:
		case 10:
			day31.style.color="#b3b3b3";
			break;
	}
	schedule();
}
function schedule(){
	var i=0;
	var sche = new Map('${shcedule}');
	alert(shce);
	var from="";
	var to="";
	sche.map(function(key, val){
		if(key.substring>=10){
			from=key.substring(0,2);
		}else{
			from=key.substring(1,2);
		}
			to=key.substring(2,4);
		document.getElementById(from).calbody.innerHTML = val;
	});
}
</script>
</head>
<body onload="leapyear()">
<!-- date is Timestamp-->
<!-- schedule is HashMap<String, Date> -->
<h3><fmt:formatDate value="${date }" type="both" pattern="yyyy년MM월dd일"/></h3>
<div class="calendar">
<c:forEach begin="1" end="7" varStatus="status">
	<div id="${status.current }" style="float: left;">
		<div class="calhead">
			${status.current }
		</div>
		<div class="calbody">
			${status.current } 의 body
		</div>
	</div>
</c:forEach>
<div style="clear: left;"></div>
<c:forEach begin="8" end="14" varStatus="status">
	<div id="${status.current }" style="float: left;">
		<div class="calhead">
			${status.current }
		</div>
		<div class="calbody">
			${status.current } 의 body
		</div>
	</div>
</c:forEach>
<div style="clear: left;"></div>
<c:forEach begin="15" end="21" varStatus="status">
	<div id="${status.current }" style="float: left;">
		<div class="calhead">
			${status.current }
		</div>
		<div class="calbody">
			${status.current } 의 body
		</div>
	</div>
</c:forEach>
<div style="clear: left;"></div>
<c:forEach begin="22" end="28" varStatus="status">
	<div id="${status.current }" style="float: left;">
		<div class="calhead">
			${status.current }
		</div>
		<div class="calbody">
			${status.current } 의 body
		</div>
	</div>
</c:forEach>
<div style="clear: left;"></div>
<c:forEach begin="29" end="31" varStatus="status">
	<div id="${status.current }" style="float: left;">
		<div class="calhead">
			${status.current }
		</div>
		<div class="calbody">
			${status.current } 의 body
		</div>
	</div>
</c:forEach>
<div style="clear: left;"></div>
</div>
</body>
</html>