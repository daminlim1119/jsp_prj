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

<style type="text/css">
/* 회원가입 폼 */
.writeForm{margin-top:60px; text-align:left;}
.writeForm > table{width:100%; border-top:2px solid #888;}
.writeForm table .writeForm_col01{width:150px;}
.writeForm table .writeForm_col02{width:15%;}
.writeForm table .writeForm_col03{width:35%;}
/*.writeForm table tr{border-bottom:1px solid #e1e3e4; font-size:0;}*/
.writeForm > table > tbody > tr{border-bottom:1px solid #e1e3e4; }
.writeForm > table > tbody > tr > th{padding:10px; font-size:14px; color:#222; background:#f9f8f8}
.writeForm > table > tbody > tr > td{padding:15px 5px 15px 15px; color:#444;}
.writeForm table tr td input[type="text"]{height:37px; border:1px solid #dedede; font-size:14px; padding:0 20px; vertical-align:middle; box-sizing:border-box;}
.writeForm table tr td input[type="password"]{height:37px; border:1px solid #dedede; font-size:14px; padding:0 20px; vertical-align:middle; box-sizing:border-box;}
.writeForm table tr td input[type="file"]{width:60%; height:42px; border:1px solid #dedede; font-size:14px; padding:7px 20px; vertical-align:middle; box-sizing:border-box;}
.writeForm table tr td .inputTxt{width:248px;}
.writeForm table tr td .inputPass{width:248px;}
/*.writeForm table tr td .inputTxt{width:calc(30% - 40px);}*/
.writeForm table tr td .inputPass.size02{width:calc(40% - 40px); max-width:248px;}
.writeForm table tr td .inputNum{width:100px; text-align:center;}
.writeForm table tr td .inputNum:first-of-type{margin-right:10px;}
.writeForm table tr td .inputEmail{width:248px;}
.writeForm table tr td input[type="text"].inputEmail02 {vertical-align:top;}
.writeForm table tr td .inputTit{width:80%;}
.writeForm table tr td select {width:140px; height:37px; padding:0 0 0 10px; font-size:14px; color:#666; margin-right:10px; text-align:center; text-align-last: center; border-color:#dedede; vertical-align:top;}
.writeForm_top table tr td select{width:70%;}
.writeForm table tr td select.selecEmail{width:245px;}
.writeForm table tr td select option{text-align:center;}
.writeForm table tr td > span{margin:0 10px; font-size:14px; color:#444; vertical-align:middle;}
.writeForm table tr td span.label{font-size:14px;}
.writeForm table tr td.step span{color:#333; font-weight:500;}
.writeForm table tr td span a{font-size:18px;}
.writeForm table tr td textarea{width:100%; height:268px; padding:15px; margin:13px 0; resize:none; font-size:14px; box-sizing:border-box; border:1px solid #dedede;}
.writeForm_btn{text-align:center; margin-top:60px; font-size:0;}
.writeForm_btn a{display:inline-block; width:180px; height:50px; line-height:50px; color:#fff; font-size:15px;}
.writeForm_btn a:last-of-type{background:#87888a; margin-left:10px;}

.writeForm table tr td .label_wrap{margin:0;}
.writeForm table tr td a.id_ch{display:inline-block; width:140px; height:37px; line-height:35px; font-size:14px; color:#222; margin-left:10px; text-align:center; vertical-align:middle; box-sizing:border-box; border:1px solid #222;}
.writeForm table tr td a.zip_ch{display:inline-block; width:140px; height:37px; line-height:35px; font-size:14px; color:#222; margin-left:10px; text-align:center; vertical-align:middle; box-sizing:border-box; border:1px solid #222;}

.writeForm table tr td span.password_ch{font-size:14px; color:#666; margin:0 60px 0 40px;}
.writeForm table tr td.editor{padding:13px 0;}
.writeForm table tr td .addr{width:calc(50% - 40px);}

.writeForm table tr td{overflow:hidden;}
.writeForm table tr td select.selectNum{width:100px;}
.writeForm table tr td label{font-size:14px; margin-right:30px; vertical-align:middle;}
.writeForm table tr td label:last-of-type{margin-right:0;}
.writeForm table tr td input[type="checkbox"]{width:15px; height:15px; margin:0 10px 0 20px; vertical-align:middle;}
.writeForm table tr td input[type="radio"]{width:15px; height:15px; margin-right:10px; vertical-align:middle;}
.writeForm table tr td i{font-style:normal;}
.writeForm table tr td .modal-content input[type="checkbox"] {margin:4px 0 0 -20px;}

.writeForm table tr .spam_td{font-size:14px;}
.writeForm table tr .spam_td img{margin:0 10px; vertical-align:middle;}
.writeForm span.col01 {color:#ea1c5b; display:inline-block; margin-right:3px;}
.writeForm th span.col01 {margin-left:-9px;}
.writeForm td p.he_txt {margin-bottom:5px;}

th, td {
  text-align: left;
}
</style>


<script type="text/javascript">
	$(function() {

	});// ready
</script>
<!-- 다음 우편번호 api 시작 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
window.onload=function(){
document.getElementById("btnZipSearch").addEventListener("click",findPostcode);
}
</script>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function findPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode;
                document.getElementById("addr").value = roadAddr;
                document.getElementById("addrDetail").focus();
                
               
                
            }
        }).open();
    }//findPostcode
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
						<li>마이페이지</li>
						<!-- 중간 파란색 바 위치 -->
					</ul>
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
				<h3>내 정보</h3>
				
				
				<!--//본문-->
				<div class="writeForm">
				<!-- value=""으로 DB에 있는 값 표시 -->
					<table>
				<colgroup>
					<col class="writeForm_col01" />
					<col width="*" />
				</colgroup>
				<tr>
					<th><label for="id">아이디</label></th>
					<td>
						<input data-value="아이디를 입력해주세요." disabled="disabled" name="id" id="id" class="inputTxt inputIdtype" type="text" maxlength="20"  />
					</td>
				</tr>
				<tr>
					<th><label for="password">비밀번호</label></th>
					<td>
						<input data-value="비밀번호를 입력해주세요." name="password" id="password" class="inputPass size02" type="password"  />
						<span class="password_ch"><label for="password2">비밀번호 확인</label></span>
						<input data-value="비밀번호를 입력해주세요." name="password2" id="password2" class="inputPass size02 mmarT10" type="password"  /><br>
						<span>*6~12자의 영문, 숫자, 특수문자 3가지를 조합하여 입력</span>
					</td>
				</tr>
				<tr>
					<th><label for="name">이름</label></th>
					<td>
						<input data-value="이름을 입력해주세요." id="name" name="name" class="inputTxt inputName" type="text"  />
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="">생일</label></th>
					<td >
						<input type="date" id="birthInput" data-value="생년월일을 입력해 주세요."/>
						<span id="CalregistdateIcon">
						
						</span>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						
						<input type="text" name="tel" id="tel" value="" onkeyup="isNumberOrHyphen(this);" onblur="cvtUserPhoneNumber(this)" data-value=""  />
						
						
					</td>
				</tr>
				<tr>
					<th>휴대폰</th>
					<td>
						
						<input type="text" name="cell" id="cell" value="" onkeyup="isNumberOrHyphen(this);" onblur="cvtUserPhoneNumber(this)" data-value="휴대폰 번호를 입력해주세요."  />
						
					</td>
				</tr>
				
				<tr>
					<th><label for="email">이메일</label></th>
					<td class="mail_type">
						<input data-value="이메일을 입력해주세요." name="email1" id="email1" class="inputEmail" type="text" maxlength="100"  /><span class="email_txt">@</span>
						<select class="selecEmail" name="email2" id="email2" data-value="이메일을 선택해주세요.">
							<option value="">선택해주세요.</option>
							<option value='직접 입력'   >직접 입력</option><option value='naver.com'   >naver.com</option><option value='daum.net'   >daum.net</option><option value='gmail.com'   >gmail.com</option><option value='hotmail.com'   >hotmail.com</option><option value='nate.com'   >nate.com</option><option value='korea.com'   >korea.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="gender">성별</label></th>
 					<td> 
						<input data-value="성별을 선택하세요." name="gender" type="radio" id="radio_check01" value="1" /><label for="radio_check01">남자</label>
 						<input name="gender" type="radio" id="radio_check02"  value="2"/><label for="radio_check02">여자</label>
 					</td> 
				</tr> 
				
				<tr>
					<th><label for="zipcode">우편번호</label></th>
					<td>
						<input data-value="우편번호를 입력해주세요." type="text" class="zipcode" id="zipcode" name="zipcode" value="" readonly="readonly" onclick="zipcodeapi();"  />
						<input type="button" id="btnZipSearch" value="우편번호 검색" class="btn btn-secondary">
					</td>
				</tr>
				<tr>
					<th><label for="addr0">주소</label></th>
					<td class="addr_td">
						<input data-value="주소를 입력해주세요." type="text" id="addr" class="addr" name="addr0" value="" readonly="readonly"  /><br />
						<input data-value="상세주소를 입력해주세요." type="text" id="addrDetail" class="addr" name="addr1" value="" style="margin-top:7px;"  />
					</td>
				</tr>
			</table>
		</div>
		<div class="writeForm_btn">
			<a href="#" onClick="reset();" style="background:blue">확인</a>
			<a href="#" onClick="reset();">취소</a>
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