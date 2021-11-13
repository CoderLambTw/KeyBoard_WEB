<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>金鍵盤-常見問題</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/style/cmr.css">
<link rel="shortcut icon" href="images/logo2.png" />
</head>
<style type="text/css">
#wh-widget-send-button {
	margin: 0 !important;
	padding: 0 !important;
	position: fixed !important;
	z-index: 16000160 !important;
	bottom: 0 !important;
	text-align: center !important;
	height: 90px;
	width: 60px;
	visibility: visible;
	transition: none !important;
}

#wh-widget-send-button.wh-widget-right {
	right: 0;
}

#wh-widget-send-button.wh-widget-left {
	left: 10px;
}

#wh-widget-send-button iframe {
	width: 100%;
	height: 100%;
	border: 0;
}

div.clear {
	clear: both;
}
/* 40px */
.toTop-arrow {
	width: 2.5rem;
	height: 2.5rem;
	padding: 0;
	margin: 0;
	border: 0;
	border-radius: 33%;
	opacity: 0.6;
	background: #000;
	cursor: pointer;
	position:fixed;
	right: 1rem;
	bottom: 1rem;
	display: none;
}
.toTop-arrow::before, .toTop-arrow::after {
	width: 18px;
	height: 5px;
	border-radius: 3px;
	background: #f90;
	position: absolute;
	content: "";
}
.toTop-arrow::before {
	transform: rotate(-45deg) translate(0, -50%);
	left: 0.5rem;
}
.toTop-arrow::after {
	transform: rotate(45deg) translate(0, -50%);
	right: 0.5rem;
}
.toTop-arrow:focus {outline: none;}


/* 48px */
.toTop-arrow {
	width: 3rem;
	height: 3rem;
	padding: 0;
	margin: 0;
	border: 0;
	border-radius: 33%;
	opacity: 0.6;
	background: #000;
	cursor: pointer;
	position:fixed;
	right: 1rem;
	bottom: 1rem;
	display: none;
}
.toTop-arrow::before, .toTop-arrow::after {
	width: 25px;
	height: 6px;
	border-radius: 3px;
	background: #f90;
	position: absolute;
	content: "";
}
.toTop-arrow::before {
	transform: rotate(-45deg) translate(0, -50%);
	left: 0.42rem;
}
.toTop-arrow::after {
	transform: rotate(45deg) translate(0, -50%);
	right: 0.42rem;
}
.toTop-arrow:focus {outline: none;}

/* 56px */
.toTop-arrow {
	width: 3.5rem;
	height: 3.5rem;
	padding: 0;
	margin: 0;
	border: 0;
	border-radius: 33%;
	opacity: 0.6;
	background: #000;
	cursor: pointer;
	position:fixed;
	right: 1rem;
	bottom: 1rem;
	display: none;
}
.toTop-arrow::before, .toTop-arrow::after {
	width: 31px;
	height: 7px;
	border-radius: 3px;
	background: #f90;
	position: absolute;
	content: "";
}
.toTop-arrow::before {
	transform: rotate(-45deg) translate(0, -50%);
	left: 0.4rem;
}
.toTop-arrow::after {
	transform: rotate(45deg) translate(0, -50%);
	right: 0.4rem;
}
.toTop-arrow:focus {outline: none;}
</style>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle" />
	</jsp:include>
	<article style="min-height: 70vh">
	<button type="button" id="BackTop" class="toTop-arrow"></button>
	<script>
		$(function(){
			$('#BackTop').click(function(){
				$('html,body').animate({scrollTop:0}, 333);
		});
		$(window).scroll(function() {
			if ( $(this).scrollTop() > 300 ){
				$('#BackTop').fadeIn(222);
			} else {
				$('#BackTop').stop().fadeOut(222);
			}
		}).scroll();
		});			
			
	</script>
		<div class="right">
			<section id="faq-question">
				<h2 class="subhead">常見問題Q&amp;A</h2>
				<div
					class="faq-links mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar"
					style="overflow: visible;">
					<div id="mCSB_2"
						class="mCustomScrollBox mCS-minimal-dark mCSB_horizontal mCSB_outside"
						tabindex="0">
						<div	 id="mCSB_2_container"
							class="mCSB_container mCS_x_hidden mCS_no_scrollbar_x"
							style="position: relative; top: 0px; left: 0px; width: 960px;"
							dir="ltr">
							<ul class="reset nav faq-tab" role="tablist">
								<li role="presentation" class=""><a href="#faq_10"
									aria-controls="faq_10" role="tab" data-toggle="tab"
									data-cat-id="10" aria-expanded="false">購買與付款流程</a></li>
								<li role="presentation" class="active"><a href="#faq_8"
									aria-controls="faq_8" role="tab" data-toggle="tab"
									data-cat-id="8" aria-expanded="true">訂單查詢及變更</a></li>
								<li role="presentation" class=""><a href="#faq_4"
									aria-controls="faq_4" role="tab" data-toggle="tab"
									data-cat-id="4" aria-expanded="false">配送及取貨相關</a></li>
								<li role="presentation" class=""><a href="#faq_11"
									aria-controls="faq_11" role="tab" data-toggle="tab"
									data-cat-id="11" aria-expanded="false">發票開立與修改</a></li>
								<li role="presentation" class=""><a href="#faq_12"
									aria-controls="faq_12" role="tab" data-toggle="tab"
									data-cat-id="12" aria-expanded="false">會員資料變更</a></li>
								<li role="presentation" class=""><a href="#faq_13"
									aria-controls="faq_13" role="tab" data-toggle="tab"
									data-cat-id="13" aria-expanded="false">維修及退換貨</a></li>
								<li role="presentation" class=""><a href="#faq_14"
									aria-controls="faq_14" role="tab" data-toggle="tab"
									data-cat-id="14" aria-expanded="false">客服聯絡資訊</a></li>
							</ul>
						</div>
					</div>
					<div id="mCSB_2_scrollbar_horizontal"
						class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_horizontal"
						style="display: none;">
						<div class="mCSB_draggerContainer">
							<div id="mCSB_2_dragger_horizontal" class="mCSB_dragger"
								style="position: absolute; min-width: 50px; width: 0px; left: 0px;"
								oncontextmenu="return false;">
								<div class="mCSB_dragger_bar"></div>
							</div>
							<div class="mCSB_draggerRail"></div>
						</div>
					</div>
				</div>
				<div class="tab-content faq-tab-content">
					<section id="faq_10" role="tabpanel" class="tab-pane fade">
						<h3 class="sr-only">購買與付款流程</h3>
						<ul class="reset faq-list">
							<li class="box active"><h4 class="tit">硬派精璽是否有實體店面可以試用及購買商品?</h4>
								<div class="content" style="display: block;">
									<p style="margin-left: 0cm; margin-right: 0cm">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">目前我們僅在台南有實體店面，您可以與我們聯繫詢問您想看貨的商品是否有展示品，避免您多跑一趟。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">是否有提供網路下單，實體門市自取的服務呢?</h4>
								<div class="content" style="display: none;">
									<p style="margin-left: 0cm; margin-right: 0cm">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">我們有提供訂購後至硬派實體門市取貨的服務，下定完成並收到通知取貨簡訊後，再前往領取，避免商品賣完未到貨、貨運尚未配達等因素導致您多跑一趟。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">結帳送出訂單後，為什麼沒有跳轉到付款頁面呢?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">目前google瀏覽器針對第一次登入網站時，會阻擋彈出視窗，您可以至網址左邊可以點選網站設定，是否有設定彈跳式視窗與重新導向允許此網站動作，若還是無法完成付款，可前往</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">會員中心</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單相關</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單查詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">/</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">點選</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">前往付款]、[付款資訊]，可以重新進行刷卡，以及查詢付款資訊，如仍無法完成付款可與我們聯繫詢問。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">為什麼有些商品無法使用超商門市取貨&amp;付款?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">因部份商品體積較為特殊或者體積較大(長、寬、高)超過目前超商門市取貨限制，故超商不受此類商品的取貨服務。
											對於某些單價較高的商品，超商門市亦不收受處理。 </span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">為什麼超商電子地圖找不到欲指定的門市?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">由於超商電子地圖上門市資料皆由物流串接公司所提供，如您欲指定之門市未在電子地圖上，即表示此門市目前暫無開放取貨服務，您可以選擇其它就近門市即可。</span>
									</p>
								</div></li>
						</ul>
					</section>
					<section id="faq_8" role="tabpanel" class="tab-pane fade active in">
						<h3 class="sr-only">訂單查詢及變更</h3>
						<ul class="reset faq-list">
							<li class="box"><h4 class="tit">如何查詢我的訂單資料呢?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往會員中心&gt;訂單相關&gt;訂單查詢/諮詢，查看訂單資料。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">購物網下訂單後，怎麼知道我的訂單已經成立了呢?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">您在硬派精璽購物網完成訂單後，系統會在網頁上顯示相關訂購成功訊息，並以電子郵件的方式通知您該筆訂單已經成立，並可前往會員中心&gt;訂單查詢/諮詢，查看目前訂單最新狀況。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">為什麼在「訂單查詢」專區裡查詢不到我的訂單呢?</h4>
								<div class="content" style="display: none;">
									<p style="margin-left: 0cm; margin-right: 0cm">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">敬請確認登入的訂購E-mail及密碼是否正確，如登入帳號為當初下訂的Email，卻未顯示訂單時，可能為以下二種情況之─：<br>
											1. 未訂購成功2. 非本站訂購
										</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我如何確保收到的商品就是我當初所訂購的商品內容？</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">在您收到訂購商品時，我們隨貨為您附上了「商品訂單明細表」，請您依表核對商品包裝內的商品內容，若有不符或短少，為確保您的權益請於</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">24</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">小時內來電客服中心，我們將即刻為您作紀錄並進行處理。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我可以在訂單成立後，要求更改訂購數量或品項嗎?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可在商品配送寄出前至</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">會員中心</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單相關</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單查詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">/</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">的</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">裡與我們告知，會有專門客服協助您處理後續。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我可以在訂單成立後，要求取消該筆訂單嗎?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單經成立資料送出，訂單狀態顯示：「出貨完成」，即表示物流單位已進入備貨或出貨作業，請恕無法取消、更改訂單。請您成立訂單時，務必再三核對收件資料，避免造成收件延遲狀況。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我可以在訂單完成後，可以要求取消該筆訂單嗎?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單經成立資料送出，訂單狀態顯示：「等待處理」，即表示處理人員，尚未確認訂單，此時可以直接點選「申請取消訂單」，系統將自動幫您取消訂單，如已付款之訂單，系統將會通知客服人員，並幫您安排退款。</span>
									</p>
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單狀態顯示:</span>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">「訂單確認」，代表我們即將幫您出貨，</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">前往</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">會員中心</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單相關</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單查詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">/</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">的</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]裡與我們告知，</span>會有專門客服協助您處理後續。
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我可以在訂單成立後，要求更改聯絡資訊嗎?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單經成立資料送出，訂單狀態顯示：「出貨完成」，即表示物流單位已進入備貨或出貨作業，請恕無法取消、更改訂單。請您成立訂單時，務必再三核對收件資料，避免造成收件延遲狀況。</span>
									</p>
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">若還未顯示「已出貨」，</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">會員中心</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單相關</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單查詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">/</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">的</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">裡與我們告知，會有專門客服協助您處理後續。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">請問訂單結帳時當下指定A門市取貨，是否可再更改為B門市取貨?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單經成立資料送出，訂單狀態顯示：「出貨完成」，即表示物流單位已進入備貨或出貨作業，請恕無法取消、更改訂單。</span>
									</p>
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">若還未顯示「出貨中、已出貨」，</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">會員中心</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單相關</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單查詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">/</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">的</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">裡與我們告知，會有專門客服協助您處理後續。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我有下定兩筆、多筆訂單，請問可以合併訂單嗎?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單經成立資料送出，訂單狀態顯示：「出貨完成」，即表示物流單位已進入備貨或出貨作業，請恕無法取消、更改訂單。</span>
									</p>
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">若還未顯示「出貨中、已出貨」，</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">會員中心</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單相關</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">&gt;</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單查詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">/</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">的</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">[</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單諮詢</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">]</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">裡與我們告知，會有專門客服協助您處理後續。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">用一次付清付款方式可以更改分期付款嗎?或是分期付款更改一次付清?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">目前訂單成立後，無法進行付款方式的修改，您可以與客服聯繫，申請刷退/退款，並重新下訂選擇正確付款方式。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">請問訂單結帳時選擇宅配方式配送，是否可改由超商門市取貨?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂單經成立資料送出，訂單狀態顯示：「等待處理」，即表示處理人員，尚未確認訂單，您可以與客服聯繫，並幫您修改配送方式。</span>
									</p>
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">單狀態顯示：「出貨完成」，即表示物流單位已進入備貨或出貨作業，請恕無法取消、更改訂單。</span>
									</p>
								</div></li>
						</ul>
					</section>
					<section id="faq_4" role="tabpanel" class="tab-pane fade">
						<h3 class="sr-only">配送及取貨相關</h3>
						<ul class="reset faq-list">
							<li class="box active"><h4 class="tit">訂購完成後，多久會出貨?什麼時後會收到商品呢?</h4>
								<div class="content" style="display: block;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">訂購完成後，如商品有現貨，我們確認收款條件無異常後，會立即為您安排商品配送，部份商品如無現貨或配送時間較長之訂單，我們會與您聯繫通知您預計出貨日期。</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">出貨完成後一般非例假日配送時間：</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">宅配：一般工作日出貨後的隔日送達，週六正常送貨。</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">超商取貨：一般約2-3個工作天內送達。</span>
									</p>
									<span style="font-size: 12.0pt"><span
										style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">●如遇假日或特殊情況（EX:颱風、物流端貨量較大等不可抗之因素，可能順延），詳細送貨時間依物流商為主。</span></span><br>
									<br> &nbsp;
								</div></li>
							<li class="box"><h4 class="tit">我要如何查詢配送進度?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">您可至會員中心&gt;訂單查詢&gt;諮詢中，找到該筆訂單，配送狀態顯示為出貨完成的訂單，表示目前已安排出貨，選擇查看明細按鈕，可查詢該筆物流單號，點選該筆單號的超連結，可進入包裹查詢頁面，查詢該筆包裹的詳細配送資訊。</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">●出貨當日因物流商系統跳轉及作業時間問題，無法立即查詢貨況，如需查詢貨況，請於出貨後的隔日查詢，如商品未於正常時間內到貨，可與客服聯繫，會有專人為您追查貨況進度</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">預購、客訂商品何時會到貨?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">如果您訂購商品為預購商品，請參考商品備註之到貨時間資訊，如有提早或延後到貨，我們將會主動與您聯絡。</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">一般客訂商品，請參考商品備註之到貨時間資訊，或依照客服人員通知之到貨時間為主，如有提前或延後到貨，我們將會主動與您聯繫。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">商品貨運配達時，若外觀有破損、壓傷等痕跡該如何處理呢?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">您好，若商品配達時有破損、壓損等看似人為的因素，請直接拒收請貨運退回，
											並與我們聯繫，如已將商品收下，請於7日內與我們聯繫並告知我們您訂單編號，我們會盡快協助您處理後續事宜，</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">收到商品後，我需要注意什麼事項，以確保我的購物權益呢？</h4>
								<div class="content" style="display: none;">在您收到訂購商品時，我們隨貨為您附上了「商品出貨明細表、發票」，請您依表核對包裝箱內的商品內容，並檢查外觀及功能是否正常，若有不符、短少、功能外觀上有問題，為確保您的權益，請於24小時內於網頁「聯絡客服」中反應，由網路客服人員為您服務，我們將為您作紀錄並進行處理。商品明細表與發票為退換貨憑證之一，請您在7天猶豫期內，妥善保管勿毀損丟棄。</div></li>
							<li class="box"><h4 class="tit">請問我買三樣商品，為什麼只收到兩樣?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">商品因材積關係或者一部分商品，是由廠商協助出貨，故商品約在2~3個工作日內(假日不列入計算)完成寄出，再請您留意收件。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">可以寄送海外或離島嗎?</h4>
								<div class="content" style="display: none;">
									<p style="margin-left: 0cm; margin-right: 0cm">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">配送範圍限台灣本島、離島地區(不含海外)。若需海外訂購及運送至海外，請洽LINE或QQ與客服聯繫，以協助您處理海外購買。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">請問離島的配送範圍有哪些?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">依照黑貓宅急便配送離島地區為澎湖、金門、馬祖、綠島，請於下單時，選擇黑貓宅急便(外島)的配送方式，離島地區運費為280元，約3個工作天可以配達。</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">超商部分，目前只有全家有支援外島澎湖配送。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">請問配合的宅配公司是哪一家?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">目前宅配部分使用統一速達</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">(</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">黑貓宅急便</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">)</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">貨運，除特殊商品如材積過大、廠商直送等因素才會使用其他貨運，恕無法挑選特定物流業者。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我可以指定送貨地點嗎?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">您可以在填寫訂單資料時的收件人欄位，輸入您指定的送貨地址。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">訂單超過配送時間為何還沒收到商品?</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往「客服中心-線上客服諮詢」與我們聯絡，我們將儘速為您查詢商品流向。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">為什麼我沒收到貨到門市的通知簡訊?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可能是您在訂購時所留的行動電話號碼有誤，如您已收到貨到門市通知信函，亦可直接前往指定超商門市取貨。如您未來需更改手機號碼，可至「會員中心」→「會員資料查詢/修改」</span>
									</p>
								</div></li>
						</ul>
					</section>
					<section id="faq_11" role="tabpanel" class="tab-pane fade">
						<h3 class="sr-only">發票開立與修改</h3>
						<ul class="reset faq-list">
							<li class="box active"><h4 class="tit">請問在貴站購買東西都會隨貨附上發票嗎?</h4>
								<div class="content" style="display: block;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">在硬派精璽線上購物網站所購買之商品，都會隨貨附上發票與出貨明細，若是由廠商直送給您，發票會在2-3天內郵寄給您，若需指定發票配送之地址，可於下訂時，在發票欄位選擇發票另外寄送的選項，並填寫該筆發票希望送達的地址。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">貴站商品頁上的價格是否含稅開發票的價格?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">除網站另有標示外，一般網頁上金額皆為含稅開發票之金額。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">發票可以指定日期、開立其他品名或金額嗎?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">因本公司目前使用電子發票及三聯式發票，如需指定發票開立之時間，僅可指定當日訂購之後的日期，但由於發票問題，可能會導致商品較晚寄出，或是發票較晚送達，如有特殊發票之開立需求，請於下訂時備註，或主動與硬派精璽客服聯繫，發票銷售明細，僅能開立正確之明細或簡稱，另無法開立非該筆訂單之金額。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">如何選擇開立三聯式發票？(我的發票需抬頭、統編)</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可以的，請您於訂購流程中選取訂購人資料發票開列選擇公司用(三聯式)並輸入您的公司統編及抬頭。</span>
									</p>
								</div></li>
						</ul>
					</section>
					<section id="faq_12" role="tabpanel" class="tab-pane fade">
						<h3 class="sr-only">會員資料變更</h3>
						<ul class="reset faq-list">
							<li class="box active"><h4 class="tit">密碼應該如何變更呢?</h4>
								<div class="content" style="display: block;">
									可以至會員中心&gt;會員資料查詢/修改，進行修改新密碼的動作。<br> <br> &nbsp;
								</div></li>
							<li class="box"><h4 class="tit">我於網頁中查詢密碼，卻出現輸入的資料有誤?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">當客戶使用個人資料查詢密碼時，若有其中一個資料與目前系統中客戶資料不符，則無法進行查詢，請至「聯絡客服」，將由網路客服人員為您服務。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">如果忘記密碼該怎麼辦?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">請連結至登入專區「忘記密碼」申請，您可選擇使用會員帳號及Email連結認證以核對您的身分，經系統檢核通過後，即可在線上重新設定一組新的登入密碼。</span>
									</p>
								</div></li>
						</ul>
					</section>
					<section id="faq_13" role="tabpanel" class="tab-pane fade">
						<h3 class="sr-only">維修及退換貨</h3>
						<ul class="reset faq-list">
							<li class="box active"><h4 class="tit">若商品收到後，使用上異常或無法使用等情形該如何處理呢?</h4>
								<div class="content" style="display: block;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">您好，商品配達後，若包裝完整無異狀，使用時若有問題可與我們客服人員聯繫，服務人員會試著協助您排除問題，並協助您處理後續。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">於網站購買之商品保固內故障，如何維修？</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">商品主體、配件之維修保固以原廠規定為主，若訂購商品日後有任何問題，可前往客服諮詢，選擇維修相關問題與我們聯繫。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">訂購的商品是否享有保固?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">硬派所販售之商品皆為台灣代理商提供之商品，皆享有原廠保固，若預知商品保固期限，可參考各商品頁面查詢，或與我們線上客服詢問。</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">商品若出貨完畢後，想要退換貨該如何處理呢?</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往[會員中心&gt;訂單相關&gt;訂單查詢/諮詢]的[訂單諮詢]裡與我們告知，會有專門客服協助您處理後續。</span><br>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">★</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">下列情形，不符退貨辦法，恕無法接受商品退貨</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">★</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">1.
										</span><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">超過7天商品鑑賞期(以到貨日算起7天內)，我要退貨選項會關閉，即無法再做退貨申請。<br>
											2. 收回退貨商品經點收後，發現退貨商品不符審閱期規範，將無法受理您的退貨，且後續會協助將退貨商品寄還給您。<br>
											3. 商品一經剪標、商品配件不全或經個人因素使用、下水、污損、損壞、勾紗、有異味等問題，均不接受退貨。<br>
											4. 未完整退回商品、原商品包裝、配件、說明書/保證書、贈品及所有附隨文件或資料。
										</span>
									</p>
								</div></li>
							<li class="box"><h4 class="tit">我要報修商品，但發票／保卡已經遺失了該怎麼辦？</h4>
								<div class="content" style="display: none;">
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可前往會員中心＞訂單查詢／諮詢中，找到您當初下訂的該筆訂單，並點選查看明細中的購買明細按鈕，即可將購買明細列印出，可做為一般報修之證明。</span>
									</p>
									<p style="text-align: justify">
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">※部份廠商仍需以保卡報修，仍請務必將保固卡妥善保留</span>
									</p>
								</div></li>
						</ul>
					</section>
					<section id="faq_14" role="tabpanel" class="tab-pane fade">
						<h3 class="sr-only">客服聯絡資訊</h3>
						<ul class="reset faq-list">
							<li class="box"><h4 class="tit">該如何與硬派精璽聯繫呢？</h4>
								<div class="content" style="display: none;">
									<p>
										<span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif">可以透過以下多種方式與硬派精璽客服聯繫，將有專人為您服務。</span>
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">硬派精璽有限公司/硬派精璽線上購物</span></span></span><br>
										&nbsp;
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">台南門市電話：06-229-6881<br>
													台北門市電話：
											</span></span></span>02-2564-1289<br> <span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">傳真：06-228-8596<br>
													手機：0978-089-187
											</span></span></span>
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">Email</span></span></span><span
											style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">：</span></span></span><span
											style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><a
												href="mailto:inpad@inpad.com.tw">inpad@inpad.com.tw</a></span></span>
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">官方Line@：＠inpad&nbsp;&nbsp;<a
													href="https://line.me/R/ti/p/%40inpad">https://line.me/R/ti/p/%40inpad</a></span></span></span><br>
										&nbsp;
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">Facebook</span></span></span><span
											style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">：</span></span></span><span
											style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><a
												href="https://www.facebook.com/INPAD">https://www.facebook.com/INPAD</a></span></span>
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">官方網址：</span></span></span><span
											style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><a
												href="https://www.inpad.com.tw">https://www.inpad.com.tw</a></span></span><br>
										&nbsp;
									</p>
									<p>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">台南門市地址：</span></span></span>台南市北門路一段226號1F(台南E01數位商場A8櫃)<br>
										<span style="background-color: white"><span
											style="font-family: &amp; quot;微軟正黑體&amp;quot;,sans-serif"><span
												style="color: black">台北門市地址：</span></span></span>台北市中山區松江路26巷2號1F
									</p>
								</div></li>
						</ul>
					</section>
				</div>
			</section>
		</div>
		
	</article>
	<jsp:include page="/subviews/footer.jsp"></jsp:include>


</body>
</html>