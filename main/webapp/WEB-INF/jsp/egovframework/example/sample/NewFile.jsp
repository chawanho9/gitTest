<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<style>
	#circle1 {
background-color:#86efef;
width:150px;
height:150px;
border-radius:75px;
text-align:center;
margin:0 auto;
font-size:12px;
vertical-align:middle;
line-height:150px;
}
</style>
<head>
<title></title>
<meta charset="utf-8">

</head>
<body>
		<label for="check">전송제어장치</label>
		<input id="check" type="checkbox">
		<p id='p'></p>
	<form action="/egovSampleList.do" >
		<div class="road_map">
			<ul id="ul">
				<li>java</li>
				<li>javascript</li>
				<li>spring</li>
				<li>oracle</li>
			</ul>
			<ul id="02">
				<li>운동</li>
				<li>연애</li>
				<li>공부</li>
			</ul>
		</div>
		<p>작성자: <input name='name' type="text"></p>
		<p>공부할꺼 추가 : <input id='append01' name='append01' type="text"></p>
		<p>p에 추가 : <input id='append02' name="append02" type="text"></p>
		<input id="prevent" type="submit" value="전송">
	</form>
	<br>
	<a id='target' href="https://www.inflearn.com/course/javascript-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8-%EA%B0%95%EC%A2%8C/lecture/415?tab=curriculum">강의듣기</a>
	<div id="circle1">
	</div>
<script>
	function func_mousMove(event) {
		  // (1) absolute 속성과 zIndex 프로퍼티를 수정해 공이 제일 위에서 움직이기 위한 준비를 합니다.
		  circle1.style.position = 'absolute';
// 		  circle1.style.zIndex = 1000;
		  
		var mouseX = event.clientX;
		var mouseY = event.clientY;
		var boxX = document.getElementById("circle1").offsetWidth;
		var boxY = document.getElementById("circle1").offsetHeight;
		var map = {"mouseX" : mouseX,
					"mouseY" : mouseY,
					"boxX" : boxX,
					"boxY:" : boxY};
		console.log(map)
		
		
			mouseX = event.clientX;
			mouseY = event.clientY;
			document.getElementById("circle1").style.left = event.clientX +'px';
			document.getElementById("circle1").style.top = event.clientY +'px';
			
		
	}
	
	var circle = document.querySelector('body');
	circle.addEventListener('mousemove',func_mousMove);
	
	function func_append01() {
		const ul = document.querySelector("#ul");
		const val = document.querySelector('form [name="append01"]').value;
		if(val.length ===0){
			return false;
		}
		const li = document.createElement('li');
		const text = document.createTextNode(val);
		li.appendChild(text);
		ul.appendChild(li);
	}
	
	const append01 = document.getElementById('append01');
	append01.addEventListener('change',func_append01);
	
	const target = document.getElementById('append02');
	target.addEventListener('change',function(event){
		document.getElementById('p').innerHTML = target.value;
	})
	
// 	var target = document.getElementById('target');
// 	target.addEventListener('click', function(event) {
// 		if(document.getElementById('check').checked){
// 			 event.preventDefault();
			
// 		}
// 	}); 
// 	const target = document.querySelector('form');
// 	target.addEventListener('submit',function(event){
// 		if(document.querySelector('form [name="name"]').value.length === 0)
// 			event.preventDefault();
// 			alert('작성자를 입력해주세요');
				
// 	})
			
	
// 	target.onclick = function(event) {
// 		if(document.getElementById('check').checked){
// 			return false;
// 		}
// 	}
// 	form.onclick = function(event) {
// 		if(document.getElementById('check').checked)
// 			return false;
		
// 	}
	
	



</script>
</body>
</html>


