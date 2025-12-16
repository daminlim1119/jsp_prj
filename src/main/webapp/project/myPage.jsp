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
</style>
<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
$(function() {

});// ready

function verified(){
	window.location.href="http://211.63.89.149/2nd_prj_restArea/myPage/myPage_myInfo.jsp"
}
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
						<li>고객 센터</li>
						<!-- 중간 파란색 바 위치 -->
						<li>공지사항</li>
					</ul>
				</div>
			</div>
		</div>
		<section class="inner">
			<!--LEFT시작-->


			<!-- 사이드바 여기 수정하시면 됩니다! -->
			<aside>
				<h2 id="leftTitle">마이페이지</h2>
				<ul id="leftMenu">
					<li class="on" id="MU00016"><a href="#void"
						title="내 정보 페이지로 이동">내 정보</a></li>
					<li class="" id="MU00017"><a href="/help/faq.do"
						title="문의내역 페이지로 이동">문의내역</a></li>
					<li class="" id="MU00017"><a href="/help/faq.do"
						title="문의사항 작성 이동">문의사항 작성</a></li>
					<li class="" id="MU00017"><a href="/help/faq.do"
						title="작성리뷰 이동">작성리뷰</a></li>
					<li class="" id="MU00017"><a href="/help/faq.do"
						title="휴게소 즐겨찾기 이동">휴게소 즐겨찾기 목록</a></li>
				</ul>
			</aside>
			<script>
				/* 원본 사이트에서는 왼쪽 사이드바가 script로 구현됨 */
			</script>

			<!--//LEFT-->

			<!--본문시작-->
			<!-- 여기 내용 편집하시면 됩니다!! -->
			<div class="cont" id="cont">
				<h3>마이페이지</h3>
				
				
				<!--//본문-->
				
				<div id="passCheck">
				<span style="font-size:25px; font-weight:bold;">회원정보 확인</span><br><br>
				<span style="font-size:20px;">고객님의 개인정보 보호를 위해 비밀번호를 입력해주세요.</span><br><br><br>
				<span style="font-size:15px;">비밀번호</span><br>
				<input type="password" placeholder="비밀번호" style="width:300px; height:50px">
				<br><br>
				<input type="button" value="확인" style="width:300px; height:50px" onclick="verified()">
				
				</div>
				
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