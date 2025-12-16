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
	
	function toList(){
		window.location.href = "http://211.63.89.149/2nd_prj_restArea/notice/notice.jsp"
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
				<h2 id="leftTitle">고객 센터</h2>
				<ul id="leftMenu">
					<li class="on" id="MU00016"><a href="#void"
						title="공지사항 페이지로 이동">공지사항</a></li>
					<li class="" id="MU00017"><a href="#void"
						title="자주 묻는 질문 페이지로 이동">자주 묻는 질문</a></li>
				</ul>
			</aside>
			<script>
				/* 원본 사이트에서는 왼쪽 사이드바가 script로 구현됨 */
			</script>

			<!--//LEFT-->

			<!--본문시작-->
			<!-- 여기 내용 편집하시면 됩니다!! -->
			<div class="cont" id="cont">
				<h3>공지사항</h3>
				<div class="tbl">
					<table summary="공지사항 게시글 상세보기" class="tblView al noticeView">
						<caption>공지사항 게시글 상세보기</caption>
						<colgroup>
							<col width="77%">
							<col width="13%">
<!-- 							<col width="10%"></col> -->
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="tblTitle">제14회 화성뱃놀이축제 개최(2024.05.31.(금)~06.02.(일), 화성시 전곡항)</th>
								<th scope="col" class="ac date">2024.04.23</th>
<!-- 								<th scope="col" class="ac hit"></th> -->
							</tr>
						</thead>
					</table>
					<table class="tblView al noticeView">
						<tbody>
							<tr id="fileTr">
								<td colspan="3" class="file">
									<a href="#" class="foldBtn on">파일 목록 닫기</a> <!-- foldBtn에 on 클래스 추가시 파일 목록 열림. -->
									첨부파일
<!-- 									<a href="#" class="allDown">모두 받기</a> -->
									<ul id="atch"><li class="goList"><a href="#" class="fileName">포스터1.jpg</a></li><li class="goList"><a href="#" class="fileName">제14회 화성 뱃놀이 축제 리플릿_page-0001.jpg</a></li><li class="goList"><a href="#" class="fileName">제14회 화성 뱃놀이 축제 리플릿_page-0002.jpg</a></li></ul>
								</td>
							</tr>
							<tr>
								<td colspan="3" class="tblText"><p><br></p>공지사항 상세 예시</td>
							</tr>
						</tbody>
					</table>
					<ul class="viewCtrl"  >
						<li><a href="#" class="prev" id="1327">이전 글</a></li>
						<li><a href="#" class="next" id="1027">다음 글</a></li>
						<li class="goList"><button id="list" class="btn btn-primary" onclick="toList()">목록</button></li>
					</ul>
				</div>
			</div>		</section>
	</main>
	<!--//SubContent-->

	<!--Footer-->

	<footer>
		<jsp:include page="footer.jsp" />
	</footer>

	<!--//Footer-->


</body>
</html>