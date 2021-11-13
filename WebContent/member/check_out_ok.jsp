<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>結帳成功</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/style/cmr.css">
</head>
<body>
<jsp:include page="/subviews/header.jsp" >
		<jsp:param value="結帳成功" name="subtitle"/>
	</jsp:include>			
	<article style="min-height: 70vh">
		${requestScope.order}
	</article>
	<%@include file="/subviews/footer.jsp" %>
</body>
</html>