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



<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->



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
	
			<!-- START THE FEATURETTES -->
			<hr class="featurette-divider">
	
			<div class="row featurette">
				<div id="calWrap">
				
<jsp:useBean class="day1119.CalendarDTO" id="calDTO" scope="page"/>
<jsp:setProperty property="*" name="calDTO"/>

				int paramYear=calDTO.getYear();
				int paramMonth=calDTO.getMonth();
				
				
				
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
			<a href="#void"><span class="calTitle" title="이전 월">&lt;</span></a>
					<span class="calTitle"><%=nowYear %>-<%=nowMonth %></span>
				<a href="#void"><span class="calTitle" title="다음 월">&gt;</span></a>
				
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
					
			
								
					%>
					<%--요일을 출력 --%>
					<td class="<%=dayColorCss%><%=today%>"><%=tempDay%></td>
				<% 
				//토요일이면 줄 변경
				switch(cal.get(Calendar.DAY_OF_WEEK)){
				case Calendar.SATURDAY:
				%>
				<tr>
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
			
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<!-- FOOTER -->
		<footer class="container">
			
		</footer>
	</main>

</body>
</html>