<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>jsp template</title>

<script src="http://192.168.10.90/jsp_prj/common/color-modes.js"></script>
<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB">

<link rel="shortcut icon" href="http://192.168.10.90/jsp_prj/common/images/favicon.ico">

<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->


<meta name="theme-color" content="#712cf9">
<link href="http://192.168.10.90/jsp_prj/common/css/carousel.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: #0000001a;
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em #0000001a, inset 0 .125em .5em #00000026
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh
}

.bi {
	vertical-align: -.125em;
	fill: currentColor
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch
}

.btn-bd-primary {
	--bd-violet-bg: #712cf9;
	--bd-violet-rgb: 112.520718, 44.062154, 249.437846;
	--bs-btn-font-weight: 600;
	--bs-btn-color: var(--bs-white);
	--bs-btn-bg: var(--bd-violet-bg);
	--bs-btn-border-color: var(--bd-violet-bg);
	--bs-btn-hover-color: var(--bs-white);
	--bs-btn-hover-bg: #6528e0;
	--bs-btn-hover-border-color: #6528e0;
	--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
	--bs-btn-active-color: var(--bs-btn-hover-color);
	--bs-btn-active-bg: #5a23c8;
	--bs-btn-active-border-color: #5a23c8
}

.bd-mode-toggle {
	z-index: 1500
}

.bd-mode-toggle .bi {
	width: 1em;
	height: 1em
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important
}
</style>
<style type="text/css">
#wrap{  margin: 0px auto; width: 1200px; height: 1000px; }	
#header{ height: 150px;	 }	
#container{ height: 700px;	 }	
#footer{ height: 150px;}	
</style>
<style type="text/css">
/*달력 객체 디자인 */
#calWrap{font-family:"맑은 고딕",sans-serif}
#calHeader{text-align:center; margin-bottom:20px}
.calTitle{font-size:25px; font-weight:bold}
#calTab{margin:0px auto; border:1px solid gray}
th,td{border:1px solid gray}
.sunTitle{width:120px; text-align:center; color:#C7C8C9;background-color:red}
.weekTitle{width:120px;text-align:center;}
.satTitle{width:120px;text-align:center; color:#C7C8C9;background-color:blue}

a{text-decoration:none; color:black}
a:hover{ color:gray}
td{height:80px; text-align:left; vertical-align:top}
.blankTd{background-color:#EFEFEF}
.sunText{color:red}
.satText{color:blue}
.weekText{color:black}

.today{background-color:pink}
</style>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>

 <script type="text/javascript">
  $( function() {
    
  } );
  
  </script>


</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" class="d-none"> <symbol
			id="check2" viewBox="0 0 16 16"> <path
			d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path> </symbol> <symbol
			id="circle-half" viewBox="0 0 16 16"> <path
			d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path> </symbol> <symbol
			id="moon-stars-fill" viewBox="0 0 16 16"> <path
			d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path> <path
			d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path> </symbol> <symbol
			id="sun-fill" viewBox="0 0 16 16"> <path
			d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path> </symbol> </svg>
	<header data-bs-theme="dark">
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">메인</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item"><a class="nav-link disabled"
							aria-disabled="true">Disabled</a></li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<div id="myCarousel" class="carousel slide mb-6"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<svg aria-hidden="true" class="bd-placeholder-img " height="100%"
						preserveAspectRatio="xMidYMid slice" width="100%"
						xmlns="http://www.w3.org/2000/svg">
						<rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
					<div class="container">
						<div class="carousel-caption text-start">
							<h1>Example headline.</h1>
							<p class="opacity-75">Some representative placeholder content
								for the first slide of the carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Sign up today</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<svg aria-hidden="true" class="bd-placeholder-img " height="100%"
						preserveAspectRatio="xMidYMid slice" width="100%"
						xmlns="http://www.w3.org/2000/svg">
						<rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
					<div class="container">
						<div class="carousel-caption">
							<h1>Another example headline.</h1>
							<p>Some representative placeholder content for the second
								slide of the carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Learn more</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<svg aria-hidden="true" class="bd-placeholder-img " height="100%"
						preserveAspectRatio="xMidYMid slice" width="100%"
						xmlns="http://www.w3.org/2000/svg">
						<rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
					<div class="container">
						<div class="carousel-caption text-end">
							<h1>One more for good measure.</h1>
							<p>Some representative placeholder content for the third
								slide of this carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->
		<div class="container marketing">
			<!-- Three columns of text below the carousel -->
		
			<!-- /.row -->
			<!-- START THE FEATURETTES -->
			<hr class="featurette-divider">
	
			<hr class="featurette-divider">
			<div class="row featurette">
				<div id="calWrap">
				<%
				Calendar cal=Calendar.getInstance();
				int nowYear=cal.get(Calendar.YEAR);
				int nowMonth=cal.get(Calendar.MONTH)+1;
				int nowDay=cal.get(Calendar.DAY_OF_MONTH);
				
				StringBuilder flagDate=new StringBuilder();
				flagDate.append(nowYear).append(nowMonth).append(nowDay);
				out.println(flagDate);
				%>
				<div id="calHeader">
			<a href="calendar.jsp?paramYear=<%= nowMonth-1==0 ? nowYear-1:nowYear %>&paramMonth=<%=nowMonth-1==0 ? 12:nowMonth-1%>"><span class="calTitle" title="이전 월">&lt;</span></a>
					<span class="calTitle"><%=nowYear %>-<%=nowMonth %></span>
				<a href="calendar.jsp?paramYear=<%= nowMonth+1==13 ? nowYear+1:nowYear %>&paramMonth=<%=nowMonth+1==13 ? 1:nowMonth+1%>"><span class="calTitle" title="다음 월">&gt;</span></a>
				
				</div>
				<div id="calBody">
				<table id="calTab">
				<thead>
				<tr>
				<th class="sunTitle">일</th>
				<th class="weekTitle">월</th>
				<th class="weekTitle">화</th>
				<th class="weekTitle">수</th>
				<th class="weekTitle">목</th>
				<th class="weekTitle">금</th>
				<th  class="satTitle">토</th>
				</tr>
				</thead>
				<tbody>
				<tr>
				<%
				cal.set(Calendar.DAY_OF_MONTH, 1);//1일로 설정
				//1일의 요일을 얻어와서 1일을 출력하기전에 공백 넣기
				int dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);
				
				//요일 별 글자색 설정할 변수
				String dayColorCss="";
				//오늘을 강조하는 css를 설정할 변수
				String today="";
				for(int i=1; i<dayOfWeek;i++){
					%>
					<td class="blankTd"></td>
					<% 
				}//end for
				
				for(int tempDay=1; ; tempDay++){//마지막날 모름
//증가하는 임시 일자로 달력 객체 설정(현재 월에 없는 날짜가 입력되면 자동으로 다음달 1일)
				cal.set(Calendar.DAY_OF_MONTH, tempDay);
					//임시일자와 설정된 날짜가 다르면(다음달 1일)
					if(tempDay != cal.get(Calendar.DAY_OF_MONTH)){
						dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);
						
						for(int i=dayOfWeek; i<8;i++){
							%>
							<td class="blankTd"></td>
							<% 
						}//end for
						%></tr><% 
						break;
						//반복문을 빠져나감
					}//end if
					
					dayColorCss="weekText";
					switch(cal.get(Calendar.DAY_OF_WEEK)){
					case Calendar.SATURDAY:dayColorCss="satText";break;
					case Calendar.SUNDAY:dayColorCss="sunText";break;
					}//switch
					
					//오늘을 강조하는 css
					today="";
					if(flagDate.toString().equals(nowYear+""+nowMonth+tempDay)){
						today="today";
					}//end if
								
					%>
					<%--요일을 출력 --%>
					<td class="<%=dayColorCss%><%=today%>"><%=tempDay%></td>
				<% 
				//토요일이면 줄 변경
				switch(cal.get(Calendar.DAY_OF_WEEK)){
				case Calendar.SATURDAY:
				%>
				</tr><tr>
				<% 
				}//end switch
				
				}//end for
				%>
				
				</tbody>
				
				</table>
				</div>
				
				</div>
				
				
			</div>
			<hr class="featurette-divider">
			
			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<!-- FOOTER -->
		<footer class="container">
			<p class="float-end">
				<a href="#">위로</a>
			</p>
			<p>
				&copy; 2강의장. &middot; <a href="#">개인정보보호정책</a>
				&middot; 개인정보관리책임자:나
			</p>
		</footer>
	</main>

</body>
</html>