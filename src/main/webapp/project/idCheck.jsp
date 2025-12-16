<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="http://192.168.10.90/jsp_prj/common/images/favicon.ico">
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->

<style type="text/css">
	div{text-align:center}
#title{font-size:30px; font-weight:bold}
#confirmId{color:red}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>



<script type="text/javascript">
window.onload=function(){
	let id=window.opener.document.getElementById("id").value;
	
	
	  if(id && id !== "null" && id !== ""){
	        document.getElementById("idCheck").value = id;
	  
	  }
	}

    
function check(){
	/* <div>사용하실 아이디는(은) <span id="confirmId">사용 </span>한 아이디입니다.</div> */
	window.close();
}

</script>
</head>
<body>
<br>
<div >
<br>
<span id="title">ID CHECK 아이디 중복확인</span>
<br>
<div>사용하고자 하는 아이디를 입력해주세요.<br>
아이디 중복확인 후 사용 가능한 아이디로 선택하시면 됩니다.</div>
<br>
<input type="text" id="idCheck" >
<input type="button" id="idBtn" value="ID 중복확인" onclick="check()"><br>



</div>

</body>
</html>