<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>

<!-- 퍼온 css 시작-->
<link rel="stylesheet" type="text/css"
	href="http://211.63.89.149/2nd_prj_restArea/resource/css/a_base.css" />
<link rel="stylesheet" type="text/css"
	href="http://211.63.89.149/2nd_prj_restArea/resource/css/a_common.css" />
<link rel="stylesheet" type="text/css"
	href="http://211.63.89.149/2nd_prj_restArea/resource/css/a_sub.css" />

<link rel="shortcut icon" type="image/x-icon"
	href="http://211.63.89.149/2nd_prj_restArea/resource/images/favicon.ico" />
<!-- 퍼온 css 끝	-->

<style type="text/css">
#joinComplete{position:absolute; top:450px; left:730px; font-size:35px; text-align:center}
footer{position:absolute; top:900px; width:100%}
</style>
<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
	$(function() {

	});// ready
</script>
</head>

<body>
	<!-- Top -->
	<header>
	<c:if test="${ empty sessionScope.id }">
			<jsp:include page="header_login.jsp" />
		</c:if>

		<c:if test="${ not empty sessionScope.id }">
			<jsp:include page="header_logout.jsp" />
		</c:if>
	</header>
	<!--//Top-->

	<!--SubContent-->
	<!-- 중간 파란색 바 경로 여기 수정하시면 됩니다. -->
	<main>
		<div class="topVis help">
			<!-- inline style 속성 삭제하면 기존 이미지 나옵니다 -->
			<div class="inner">
				<p>고속도로 <span>휴게소의</span> <span>모든것</span> <br />쌍용 휴게소 허브</p>
				<div class="location">
					<ul>
						<li>메인</li>
						<li>회원가입</li>
					</ul>
				</div>
			</div>
		</div>
		<section class="inner">
			<!--LEFT시작-->


			<!-- 사이드바 여기 수정하시면 됩니다! -->
			
			<script>
				/* 원본 사이트에서는 왼쪽 사이드바가 script로 구현됨 */
			</script>

			<!--//LEFT-->

			<!--본문시작-->
			<!-- 여기 내용 편집하시면 됩니다!! -->
			<div id="joinComplete">
		회원가입이 완료되었습니다.<br>
		로그인 후 서비스 이용이 가능합니다.
		</div>
		</section>
	</main>
	<!--//SubContent-->

	<!--Footer-->

	<footer>
		<jsp:include page="footer.jsp" />
	</footer>

	<!--//Footer-->


</body>
</html>