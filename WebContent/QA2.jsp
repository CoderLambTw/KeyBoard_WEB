<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>金鍵盤</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/style/cmr.css">
<link rel="shortcut icon" href="images/logo2.png" />
</head>
<style>
	.QA{
		margin-left: 28%;
		margin-top: 2%;
		font-size: 2em;
	}
	.QA summary{
		border-style:double;
		background: #FFBB66;
		width: 900px;
	}	
	.QA summary:hover{
		background: #FFAA33;
		font-size: 0.9em;
	}	
	.QA p{
		border:5px dashed lightgray;
		border-right-style: none;
		border-bottom-style: none;
		border-top-style: none;
		font-size: 0.8em;
		width: 800px;
	}
</style>
<body>
	<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle" />
	</jsp:include>
	<article style="min-height: 70vh">
			<div class="QA">
				<details>
					<summary>金鍵盤是否有實體店面可以試用及購買商品?</summary>
					<p>目前我們僅在台南有實體店面，您可以與我們聯繫詢問您想看貨的商品是否有展示品，避免您多跑一趟。</p>
				</details>
				<br>
				<details>
					<summary>是否有提供網路下單，實體門市自取的服務呢?</summary>
					<p>我們有提供訂購後至硬派實體門市取貨的服務，下定完成並收到通知取貨簡訊後，再前往領取，避免商品賣完未到貨、貨運尚未配達等因素導致您多跑一趟。</p>
				</details>
				<br>
				<details>
					<summary>結帳送出訂單後，為什麼沒有跳轉到付款頁面呢?</summary>
					<p>目前google瀏覽器針對第一次登入網站時，會阻擋彈出視窗，您可以至網址左邊可以點選網站設定，是否有設定彈跳式視窗與重新導向允許此網站動作，
					若還是無法完成付款，可前往[會員中心>訂單相關>訂單查詢/諮詢]點選[前往付款]、[付款資訊]，
					可以重新進行刷卡，以及查詢付款資訊，如仍無法完成付款可與我們聯繫詢問。</p>
				</details>
				<br>
				<details>
					<summary>為什麼有些商品無法使用超商門市取貨&付款?</summary>
					<p>因部份商品體積較為特殊或者體積較大(長、寬、高)超過目前超商門市取貨限制，故超商不受此類商品的取貨服務。 對於某些單價較高的商品，超商門市亦不收受處理。</p>
				</details>
				<br>
				<details>
					<summary>為什麼超商電子地圖找不到欲指定的門市?</summary>
					<p>由於超商電子地圖上門市資料皆由物流串接公司所提供，如您欲指定之門市未在電子地圖上，即表示此門市目前暫無開放取貨服務，您可以選擇其它就近門市即可。</p>
				</details>
			</div>
	</article>
	<jsp:include page="/subviews/footer.jsp"></jsp:include>

</body>
</html>