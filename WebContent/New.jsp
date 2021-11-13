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
.box-wrap .toggle {
	font-size: 16px;
	border-radius: 4px;
	border: 1px solid #cecece;
	background: #efefef;
}

.box-wrap.box-open .toggle:after {
	content: "關閉"
}

.box-wrap.box-close .toggle:after {
	content: "展開"
}

.box {
	border: 0px solid black;
	display: block;
	width: 500px;
	text-align: left;
	background-color: #eee;
	transition: height 0.35s ease;
	overflow: hidden;
	padding: 0 0px 0px 10px;
}

.box-close .box {
	height: 70px;
}

.box-open .box {
	height: 400px;
}
</style>

<body>
	<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle" />
	</jsp:include>
	<div class="box-wrap box-close">
		<div style="margin-bottom: 20px;">
			<button class="toggle"></button>
		</div>
		<div class="box" data-block="BLOCK_PRODUCT_ORDER_PAY_PLAN">
			<h3 class="tit">分期資訊</h3>
			<div class="content" style="display: block;">
				<div class="editor">
					<table
						style="border-collapse: collapse; border: 1px solid #ccc; font-size: 14px; line-height: 1.5; background: #fff">
						<tbody>
							<tr>
								<td rowspan="3" style="border: 1px solid #ccc; padding: 5px;">分期資訊：</td>
								<td style="border: 1px solid #ccc; padding: 5px;">刷卡分<strong
									style="color: red">3</strong>期約
								</td>
								<td style="border: 1px solid #ccc; padding: 5px;"><strong
									id="ORDER_PAY_PLAY_3" style="color: red">6,999</strong>元 <strong
									style="color: red">3期0利率</strong></td>
							</tr>
							<tr>
								<td style="border: 1px solid #ccc; padding: 5px;">刷卡分<strong
									style="color: red">6</strong>期約
								</td>
								<td style="border: 1px solid #ccc; padding: 5px;"><strong
									id="ORDER_PAY_PLAY_6" style="color: red">7,278</strong>元 <strong
									style="color: red">6期4%利率</strong></td>
							</tr>
							<tr>
								<td style="border: 1px solid #ccc; padding: 5px;">刷卡分<strong
									style="color: red">12</strong>期約
								</td>
								<td style="border: 1px solid #ccc; padding: 5px;"><strong
									id="ORDER_PAY_PLAY_12" style="color: red">7,488</strong>元 <strong
									style="color: red">12期7%利率</strong></td>
							</tr>
							<tr>
								<td colspan="3"
									style="border: 1px solid #ccc; padding: 5px; font-weight: bold; text-align: center;">支援刷卡分期的銀行</td>
							</tr>
							<tr>
								<td colspan="3" style="border: 1px solid #ccc; padding: 5px;">台新銀行、華南銀行、玉山銀行、中國信託銀行、第一銀行、台北富邦銀行、凱基銀行、國泰世華銀行、合作金庫銀行、遠東銀行、永豐銀行、澳盛銀行、日盛銀行、上海銀行、中信銀行、元大銀行、台中商銀、兆豐銀行、匯豐銀行、彰化銀行、新光銀行、聯邦銀行、台灣樂天</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		var toggleNode = document.querySelector('.toggle');

		toggleNode.addEventListener("click", toggleFunc);

		function toggleFunc(E) {
			var newClassName = "box-wrap box-close"
			E.preventDefault();
			box = document.querySelector('.box-wrap');
			if (box.className.match(/box-close/)) {
				newClassName = "box-wrap box-open";
			}
			box.className = newClassName;
		}
	</script>

	<jsp:include page="/subviews/footer.jsp"></jsp:include>

</body>
</html>