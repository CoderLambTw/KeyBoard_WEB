<%@page import="uuu.cmr.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="uuu.cmr.service.ProductService"%>
<%@page import="uuu.cmr.entity.ShoppingCart"%>
<%@page import="uuu.cmr.entity.Customer"%>
<%@page import="uuu.cmr.entity.CartItem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<%
			Customer member = (Customer)session.getAttribute("member");
			ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
			//1.將request中for data(keyword)
			String keyword = request.getParameter("keyword");

			//2.呼叫商業邏輯
			
			ProductService service = new ProductService();
			List<Product> list = null;
			if(keyword!=null && (keyword=keyword.trim()).length()>0){
				//如果長度等於0即查詢全部
				list = service.getProductsByKeyword(keyword);
			}else{
				keyword = " ";
				list = service.getAllProducts();
			}
		%>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/style/cmr.css" >
 	<script type="text/javascript">
    $(document).ready(function(){
      $('.slide').slick({
        
      });
    });
  </script>
<style type="text/css">
	.menu{
		text-align: center;
	}
	a{
		text-decoration: none;	
	}
	
</style>
</head>


<body>
<jsp:include page="/code_demo.jsp">
		<jsp:param value="Insert title here" name="subtitle"/>
	</jsp:include>
	<div style="position: relative; top: 30px;">
	<div class="logo" style="margin-left: 600px;">
		
		<a href="<%= request.getContextPath() %>/index.jsp" title="回到首頁"><img style="width: 150px;" class="logo" src="<%= request.getContextPath() %>/images/logo2.png">	</a>
	</div>
	<form action="products_list.jsp">
		<input style="width: 300px; position:absolute; left: 40%; top: 40%;" type="search" placeholder="請輸入關鍵字搜尋" name="keyword" value="<%= keyword%>">
		<input style="position:absolute; left: 56%; top: 40%;"type="submit" value="查詢">
	</form>
	<div style="text-align: center; position: relative; left: -20px; top: -40px;">
		<a href="<%=request.getContextPath() %>/products_list.jsp">Ducky | </a>
		<a href="<%=request.getContextPath() %>/products_list.jsp">機械式鍵盤 | </a>
		<a href="<%=request.getContextPath() %>/products_list.jsp">Hyperx | </a>
		<a href="<%=request.getContextPath() %>/products_list.jsp">滑鼠 | </a>
		<a href="<%=request.getContextPath() %>/products_list.jsp">電競螢幕 | </a>
		<a href="<%=request.getContextPath() %>/products_list.jsp">電競椅  </a>
	</div>
	</div>
	<%if(member!=null){%>
	<a href="<%= request.getContextPath() %>/member/cart.jsp">
	<img style="width:35px; float:right; position: relative; top: -28px;" title="購物車" src="<%= request.getContextPath() %>/images/cart.png"></img>
	<span id="cartTotalQuantity" style="float: right; position: relative; top: -10px; color: red;">
			購物車
			<%= cart!=null && cart.getTotalQuantity()>0?cart.getTotalQuantity():"" %>			
	</span>
	<%} %>
	</a>
	<hr>
	<div class="menu">
		<a href="<%=request.getContextPath() %>/products_list.jsp">熱賣商品 /</a>
		<a href="<%=request.getContextPath() %>/QA3.jsp">常見問題Q&A /</a>
		<a href="<%=request.getContextPath() %>/member/orders_history.jsp">歷史訂單</a>		
	</div>
</body>
</html>