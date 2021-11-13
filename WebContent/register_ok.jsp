<%@page import="uuu.cmr.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>金鍵盤-註冊成功</title>
</head>
<%
	Customer c = (Customer) request.getAttribute("customer");
%>
<body>
	<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle" />
	</jsp:include>
	<meta http-equiv="refresh" content="3;url=<%=request.getContextPath()%>/index.jsp"> 
	<%=c!=null?c.getName():"" %>，你好!
	<h3>請稍等，3秒後將會自動返回首頁!</h3>
</body>
</html>