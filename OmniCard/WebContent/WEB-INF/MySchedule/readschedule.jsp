<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/OmniCard/css/ScheduleCSS.css">

<script>
function show_sche_dtl(param){
	alert(param);
}
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
// 	var sche = {};
// 	var reformsche = sche_map.map(function(){
// 		sche[sche_map.from_when]
// 	});
	var shce = ${schedule};
	for(var param in sche){
		for(var i = param.from_when.getDate(); 
			param.to_when.getDate()-param.from_when.getDate(); i++){
			document.getElementById(i).innerHTML = '성공!';
		}
	}
// 	alert(sche);
// 	var from="";
// 	var to="";
// 	alert(from);
// 	alert(to);
// 	sche.map(function(key, val){
// 		if(key.substring>=10){
// 			from=key.substring(0,2);
// 		}else{
// 			from=key.substring(1,2);
// 		}
// 			to=key.substring(2,4);
// 		document.getElementById(from).calbody.innerHTML = val;
// 	});
}
function scheduleMove(){
	var param = document.getElementById("scheduleToMove").value;
	location.href="schedule.do?scheduleToMove="+param;
}
function ins_schedule(){
	location.href="ins_schedule.do";
}
</script>
</head>
<body onload="leapyear()">
	<!-- date is Timestamp-->
	<!-- schedule is HashMap<String, Date> -->
	<div>
		<h3>
			${date }
		</h3>
		날짜 이동 : <input type="date" id="scheduleToMove" value="${date }"
			onchange="scheduleMove()">
	</div>
	<div>
		<div class="button" style="float: left; margin-right: 10px;">
			<a href="#"><input type="button" value="스케줄 등록"></a>
		</div>
		<div class="button" style="float: left;">
			<a href="#"><input type="button" value="스케줄 제거"></a>
		</div>
		<div style="clear: left;"></div>
	</div>
	<div class="calendar">
		<c:forEach var="sche" items="schedule">
			<c:forEach begin="1" end="7" varStatus="status">
				<div id="${status.current }" class="schedule_shell"
					style="float: left;">
					<div class="calhead" onclick="show_sche_dtl(${month + status.current})">
						${status.current }</div>
					<div class="calbody" onclick="show_sche_dtl(${month + status.current})">
						${sche }</div>
				</div>
			</c:forEach>
			<div style="clear: left;"></div>
			<c:forEach begin="8" end="14" varStatus="status">
				<div id="${status.current }" class="schedule_shell"
					style="float: left;">
					<div class="calhead" onclick="show_sche_dtl(${month + status.current})">
						${status.current }</div>
					<div class="calbody" onclick="show_sche_dtl(${month + status.current})">
						${sche }</div>
				</div>
			</c:forEach>
			<div style="clear: left;"></div>
			<c:forEach begin="15" end="21" varStatus="status">
				<div id="${status.current }" class="schedule_shell"
					style="float: left;">
					<div class="calhead" onclick="show_sche_dtl(${month + status.current})">
						${status.current }</div>
					<div class="calbody" onclick="show_sche_dtl(${month + status.current})">
						${sche }</div>
				</div>
			</c:forEach>
			<div style="clear: left;"></div>
			<c:forEach begin="22" end="28" varStatus="status">
				<div id="${status.current }" class="schedule_shell"
					style="float: left;">
					<div class="calhead" onclick="show_sche_dtl(${month + status.current})">
						${status.current }</div>
					<div class="calbody" onclick="show_sche_dtl(${month + status.current})">
						${sche }</div>
				</div>
			</c:forEach>
			<div style="clear: left;"></div>
			<c:forEach begin="29" end="31" varStatus="status">
				<div id="${status.current }" class="schedule_shell"
					style="float: left;">
					<div class="calhead" onclick="show_sche_dtl(${month + status.current})">
						${status.current }</div>
					<div class="calbody" onclick="show_sche_dtl(${month + status.current})">
						${sche }</div>
				</div>
			</c:forEach>
			<div style="clear: left;"></div>
		</c:forEach>
	</div>
</body>
</html>