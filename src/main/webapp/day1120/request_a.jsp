<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnGet").click(function(){
		location.href="request_b.jsp";
	})
	$("#btnGet2").click(function(){
		$("#getForm").submit();
	})
	$("#btnPost").click(function(){
		$("#postForm").submit();
	})
	
});//ready

</script>
</head>
<body>
<div id="get">
<strong>GET방식</strong><br>
<a href="request_b.jsp">Get링크요청</a>
<input type="button" value="get location 요청" id="btnGet" class="btn btn-success">

<form action="request_b.jsp" method="get" id="getForm">
<input type="button" value="Get Form submit 요청" class="btn btn-info"
id="btnGet2">
</form>
<div>

</div>
<strong>post 방식</strong><br>
<form action="request_b.jsp" method="post" id="postForm">
<input type="button" value="post Form submit 요청" class="btn btn-info"
id="btnPost">
</form>
</div>
</body>
</html>