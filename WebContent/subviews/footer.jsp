<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style>
footer {
	color: white;
	background-color: black;
}

.logo {
	width: 112px;
}
.foot-info{
	margin-left: 500px;
	display: flex;
	flex-direction: row;
	
}
.tit{
	color: green;
	font-size: 1.2em;
}
.copyright{
	background: black;
}
</style>

<footer style="text-align: center;">
	<img class="logo" src="<%=request.getContextPath()%>/images/logo2.png"
		style="float: left;">
	<div class="foot-info">
		<div class="rows">
			<span class="tit">台北店</span>
			<ul class="reset">
				<li>電話： 02-2564-1289</li>
				<li>地址：台北市中山區松江路26巷2號1F</li>
			</ul>
		</div>
		<div class="rows">
			<span class="tit">台南店</span>
			<ul class="reset">
				<li>電話： 06-229-6881</li>
				<li>傳真： 06-228-8596</li>
				<li>地址：台南市北門路一段226號1F(台南E01數位商場A8櫃)</li>
			</ul>
		</div>
		<div class="rows">
			<span class="tit">匯款資訊</span>
			<ul class="reset">
				<li>戶名： 硬派精璽有限公司</li>
				<li>代碼： 007 (第一銀行 赤崁分行)</li>
				<li>帳號：60510087116</li>
			</ul>
		</div>
		
	</div>
	<p class="copyright">Copyright © ChairMaster. All Rights Reserved.</p>


</footer>


