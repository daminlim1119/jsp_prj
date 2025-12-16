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
						<ul>
						<li>메인</li>
						<li>고객 센터</li>
						<!-- 중간 파란색 바 위치 -->
						<li>공지사항</li>
					</ul>
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
				<div class="cont" id="cont">
				<form>
					<fieldset class="searchBox">
						<select title="검색어  분류 ">
							<option value="1">전체</option>
							<option value="2">제목</option>
							<option value="3">내용</option>
						</select>
						<label class="hidden" for="picker">검색어</label>
						<input type="text" id="picker" name="searchBox"title="검색어 입력" placeholder="검색어를 입력해주세요."
							onkeypress="if(event.keyCode=='13'){event.preventDefault(); getNoticeList(1)}"></input>
						<button type="button" onClick="javascript:getNoticeList(1)">검색하기</button>
					</fieldset>
				</form>
				<div class="tbl">
					<p class="total">총 게시물 <em>0</em></p>
					<table summary="공지사항 게시글 목록" class="tblList">
						<caption>공지사항 게시글 목록</caption>
						<colgroup>
							<col width="6%" />
							<col>
							<col width="24%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>
						<tbody>
						<tr id="1547"><td scope="col">43</td><td scope="col" class="file tblTitle" 
						title="첨부파일 "><a href="http://211.63.89.149/2nd_prj_restArea/notice/noticeDetail.jsp">제14회 화성뱃놀이축제 개최(2024.05.31.(금)~06.02.(일), 화성시 전곡항)</a></td><td scope="col">2025.10.13</td></tr>
						<tr id="1507"><td scope="col">42</td><td scope="col" class="tblTitle" 
						title=""><a href="http://211.63.89.149/2nd_prj_restArea/notice/noticeDetail.jsp">서수원~오산~평택 고속도로지능형교통체계(ITS) 구축 공사 입찰공고</a></td><td scope="col">2025.04.14</td></tr>
						<tr id="1468"><td scope="col">41</td><td scope="col" class="tblTitle"
						title=""><a href="http://211.63.89.149/2nd_prj_restArea/notice/noticeDetail.jsp">서수원~오산~평택고속도로 2025년 신축이음장치 개선공사</a></td><td scope="col">2025.03.04</td></tr>
						<tr id="1467"><td scope="col">
						</tbody>
						</table>
					</div>
					<div class="paging">
						<ul><li class="first"><a href="#">맨 앞으로 가기</a></li><li class="prev"><a href="#">앞으로 가기</a></li><li class="on" title="현재페이지"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li><li><a href="#">5</a></li><li class="next"><a href="#">뒤로 가기</a></li><li class="last"><a href="#">맨 뒤로 가기</a></li></ul>
					</div>
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