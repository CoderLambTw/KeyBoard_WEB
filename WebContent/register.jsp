<%@page import="uuu.cmr.entity.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>金鍵盤-加入會員</title>
<link rel="shortcut icon"  href="images/logo2.png" />
  <style type="text/css">
  	body{
		font-family: Arial, "文泉驛正黑", "WenQuanYi Zen Hei", "儷黑 Pro", "LiHei Pro", 
			"微軟正黑體", "Microsoft JhengHei", "標楷體", DFKai-SB, sans-serif;
		background-repeat: no-repeat;	
		background-position: center;	
		}
  #logo{
		text-align: center;
	}	
	#registerTable{
		margin-left: 36%;
		border: 3px double black;
		width: 500px;
		height: 780px;
	}
	#registerTable caption{
		text-align: center;
	}
	#registerTable td, #registerTable th {
		 border: 1px solid #cbc;
		 padding: 2px 5px;
	}
	#registerTable tr:hover {background-color: #ddd;}	
	#registerTable th {
		 padding-top: 3px;
		 padding-bottom: 3px;
		 background-color: darkgray;
		 color: white;
	}
	.style01{
		font-size: x-small;
	}
	button {
		color: #15110D;
		padding: 8px 15px;
		font-size: 22px;
		font-weight: bold;
		border-radius: 20px;
		box-shadow: 3px 3px #4E4A4D;
		background-color: #ADA9A8;
		text-align:center;
		margin: 20px 0px;
	}	
	button:hover {
		border: none;
		background-color: #15110D;
		color: #ADA9A8;
		box-shadow: none;
	}
	footer {
		text-align: center;
		clear: both;
		color: #000;
		font-size: 14px;
		background-color:lightgray;
	}
  </style>
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
	  
	<script type="text/javascript">
		function refreshCaptcha(imgTarget){
			//alert(imgTarget.src);
			imgTarget.src = "image/captcha.png?refresh=" + new Date();
		}
</script>
</head>
			<%
			List<String> errors = (List<String>) request.getAttribute("errors");
			%>
<body>

	<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle"/>
	</jsp:include>
<article style="min-height: 70vh">
	<!-- 註冊畫面 -->
	<div id="registerTable">
		<%= errors!=null?errors.toString():"" %>
		<form action="register.do" method="POST">
			<table>
				<caption>設定帳號</caption>
				<colgroup><col width="30%">
				<col width="70%">

				<thead>
					
					<tr>
						<th><label>會員帳號<br><dfn>Your ID</dfn></label></th>						
						<td>
						   <input id="l01" name="id" required pattern="[A-Z][12]\d{8}"
						   value="<%= request.getParameter("id")==null?"": request.getParameter("id")%>">
                           <p><dfn class="style01">請以半形輸入，4-50個英、數字組合。</dfn></p>
                           <p><dfn class="style01">帳號設定不能與密碼相同。</dfn></p>
						</td>
					</tr>
					<tr>
						<th><label>姓名<br><dfn>Your Name</dfn></label></th>						
						<td>
						   <input id="l02" name="name" required 
						   value="<%= request.getParameter("name")==null?"": request.getParameter("name")%>">
                           <p><dfn class="style01">請輸入正確性名</dfn></p>
						</td>
					</tr>
					<tr>
						<th><label>電子郵件<br><dfn>Your E-mail</dfn></label></th>
						<td>
							<input name="email" id="l02" type="email" required
							value="<%= request.getParameter("email")==null?"": request.getParameter("email")%>" >
                            <p><dfn class="style01">請以半形輸入，e-mail不能重複註冊。</dfn></p>
						</td>
					</tr>
					<tr>
						<th><label>密碼<br><dfn>Password</dfn></label></th>
						<td>
							<input name="password" id="l03" type="password" required
							minlength="8" maxlength="12">
                            <p><dfn class="style01">8-12字元，至少2個英文與2個數字</dfn></p>
                            <p><dfn class="style01">不含空白、雙引號、單引號、星號</dfn></p>
                            <p><dfn class="style01">注意密碼不與其他網站相同，確保帳戶安全</dfn></p>
						</td>
					</tr>
					<tr>
						<th><label>密碼確認<br><dfn>Comfirm Password</dfn></label></th>
						<td>
							<input name="passwordCheck" id="l04" type="password" required
							minlength="8" maxlength="12">
                            <p><dfn class="style01">請再次輸入密碼</dfn></p>
						</td>
					</tr>
					<tr>
						<th><label>地址<br><dfn>Address</dfn></label></th>
						<td>
							<textarea rows="2" cols="20" name="address">
							<%= request.getParameter("address")==null?"": request.getParameter("address")%>
							</textarea>
                            <p><dfn class="style01">請輸入居住所在地之詳細地址</dfn></p>
						</td>
					</tr>
					<tr>
						<th><label>生日與性別<br><dfn>Birthday & Gender</dfn></label></th>
						<td>
							<input type="date" name="birthday" required 
							max="2020-01-13" value="<%= request.getParameter("birthday")==null?"": request.getParameter("birthday")%>">
							<p>
							<input type="radio" name="gender" required value='<%=Customer.MALE%>' 
							<%= String.valueOf(Customer.MALE).equals(request.getParameter("gender"))?"checked":""%>><label>男Male</label>
							<input type="radio" name="gender" required value='<%=Customer.FEMALE%>' 
							<%= String.valueOf(Customer.FEMALE).equals(request.getParameter("gender"))?"checked":""%>><label>女Female</label>
							</p>
						</td>						
					</tr>
					<tr>	
						<th><label>驗證碼認證<br><dfn>Captcha</dfn></label></th>
						<td>
							<label>驗證碼:</label>
							<input type ="text" placeholder="請輸入驗證碼" name="captcha" required>
							<img style="vertical-align: middle;" src= "image/captcha.png" onclick="refreshCaptcha(this)"
								alt="captcha圖片" title="點選圖片可更新驗證碼">		
						</td>						
					</tr>			
				</thead>				
			</table>
				<div>
				<input type="checkbox" id="title"><label>訂閱會員專函</label>
				<br>
				<p>
				每月初針對黃金、白金、鑽石會員固定發送，通知您當月最新會員等級、
				<br>
				分級優惠、生日優惠等會員資訊。				
				</p>
			</div>	
			<div>
				<input type="checkbox" id="title"><label>訂閱商品/活動訊息</label>
				<br>
				<p>
				不定期透過email通知最新商品活動及優惠資訊。				
				</p>
			</div>	
			<button type="submit" style="position: relative; left: 350px; top: -55px;">確認送出</button>
			</form>

				
		</div>
	</article>
<jsp:include page="/subviews/footer.jsp"></jsp:include>	
</body>
</html>