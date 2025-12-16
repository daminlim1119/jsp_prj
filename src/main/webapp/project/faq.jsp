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
    // 초기화: 모든 dd 숨김, dt에서 on 제거
    $('#faqCont dd').hide();
    $('#faqCont dt').removeClass('on');

    $('#faqCont dt').click(function(){
        var dd = $(this).next('dd');

        // 이미 열려 있으면 닫기
        if(dd.is(':visible')){
            dd.slideUp();
            $(this).removeClass('on');
        } else { // 닫혀있으면 열기
            dd.slideDown();
            $(this).addClass('on');
        }
    });
});
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
						<li>자주 묻는 질문</li>
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
					<li class="" id="MU00016"><a href="http://211.63.89.149/2nd_prj_restArea/customerservice/notice.jsp"
						title="공지사항 페이지로 이동">공지사항</a></li>
					<li class="on" id="MU00017"><a href="#void"
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
				<h3>자주 묻는 질문</h3>
				<form>
					<fieldset class="searchBox">
						<select title="검색어  분류 ">
							<option value="1">전체</option>
							<option value="2">질문</option>
							<option value="3">답변</option>
						</select>
						<label class="hidden" for="searchBox">검색어</label>
						<input type="text" name="searchBox" title="검색어 입력" placeholder="검색어를 입력해주세요." 
						onkeypress="if(event.keyCode=='13'){event.preventDefault();javascript:getFaqList()}"></input>
						<button type="button" onclick="javascript:getFaqList()">검색하기</button>
					</fieldset>
				</form>
				
					<dl class="faq" id="faqCont">
					<!-- 여기서부터 -->
					<dt title="질문"  ><a href="#void">통행료 면제 차량의 근거 및 종류는?</a></dt>
					<dd title="답변">
					<p>통행료 면제 차량의 근거 및 종류는 아래표와 같습니다.<br><br>
					</p></dd>
					<hr>
					<!-- 여기까지 복사 -->
					<dt title="질문" ><a href="#void">자주 묻는 질문 예시</a></dt>
					<dd title="답변">
					<p>질문에 대한 답변입니다<br><br>
					</p></dd>
					<hr>
					<dt title="질문" ><a href="#void">자주 묻는 질문 예시</a></dt>
					<dd title="답변">
					<p>질문에 대한 답변입니다<br><br>
					</p></dd>
					<hr>
					</dl> 
				
				<dl class="faq" id="faqCont"> <!-- nodata --> <!-- <div class="nodata">검색결과가 없습니다.</div> --></dl>
				<div class="paging">
					<ul>
						<li class="first"><a href="#">맨 앞으로 가기</a></li>
						<li class="prev"><a href="#">앞으로 가기</a></li>
						<li class="on"><a href="#" title="현재페이지">1</a></li>
						<li class="next"><a href="#">뒤로 가기</a></li>
						<li class="last"><a href="#">맨 뒤로 가기</a></li>
					</ul>
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