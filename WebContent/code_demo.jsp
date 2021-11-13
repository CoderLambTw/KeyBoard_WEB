<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>輪播</title>
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/style/cmr.css">
<style>
#circleContent {
	width: 60%;
	height: auto;
	text-align: center;
}
.blink {
    animation-duration: 1s;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: ease-in-out;
}
</style>

<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$('#circleContent').carousel({
			interval : 2500
		});//每隔5秒自動輪播 
	});
</script>
</head>
<body>
	<div style="background: black;">
		<div id="circleContent" class="carousel slide"
			style="position: relative; left: 380px;">
			<ol class="carousel-indicators" style="positio: relative; top: 53px;">
				<li data-target="#circleContent" data-slide-to="0" class="active"></li>
				<li data-target="#circleContent" data-slide-to="1"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="<%=request.getContextPath()%>/images/onsale.jpg">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/images/onsale2.jpg">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<a class="carousel-control left" href="#circleContent"
				data-slide="prevent">‹</a> <a class="carousel-control right"
				href="#circleContent" data-slide="next">›</a>
		</div>		
	</div>
	
</body>
</html>
