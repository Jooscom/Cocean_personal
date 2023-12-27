<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="<c:url value='/resource/css/common.css'/>">
</head>
<body>
<c:import url="/side"/>
<div class="commonContainer">
	<div class="commonTitle"><h2>HOME</h2></div>
	<div class="commonContent">내용</div>

</div>


</body>
<script>
	resizeWidth();
	window.addEventListener('resize',resizeWidth);
	function resizeWidth(){
		var winWidth = window.innerWidth;
		//console.log(winWidth);
		var sideWidth = $('nav').outerWidth();
		//console.log(sideWidth);
		var contentWidth = winWidth-sideWidth;
		$('.commonContainer').css({'width':contentWidth, 'margin-left':sideWidth});
	}

</script>
</html>