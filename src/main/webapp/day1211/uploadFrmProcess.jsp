<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../fragments/siteProperty.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
<jsp:include page="../fragments/bootstrap_css.jsp"/>
<style type="text/css">
#wrap{  margin: 0px auto; width: 1200px; height: 1000px; }	
#header{ height: 150px;	 }	
#container{ height: 700px;	 }	
#footer{ height: 150px;}	
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
		<jsp:include page="../fragments/header.jsp"/>
	</header>
	<main>
		
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
				<div class="col-md-7 order-md-2">
		<%-- <%
		enctype="multipart/form-data" 였을 때는
		기존 방식으로 web parameter처리가 안됨
		=>파일 업로드 컴포넌트를 사용
		
		String uploader=request.getParameter("uploader");
		%>
		<%=uploader %>,${param.uploader } --%>
					
			<% 
			
			
			//1.업로드된 파일을 저장할 경로 작성
			File saveDir=new File("C:/dev/workspace/jsp_prj/src/main/webapp/upload");
			//2.최대 크기 설정
			int maxsize=1024*1024*10;//10mbyte로 제한
			//업로드 크기를 설정
			int uploadSize=1024*1024*600;//600mbyte로 제한
			//3.FileUpload 객체(MultipartRequest)를 생성=>생성하자마자 업로드
			MultipartRequest mr=
			new MultipartRequest(request,saveDir.getAbsolutePath(),uploadSize,"UTF-8",new DefaultFileRenamePolicy());
			
			String uploader=mr.getParameter("uploader");
			String[]ageArr=mr.getParameterValues("age");
			//파일명은 파라메터로 받을 수 없다
			//String fileName=mr.getParameter("upfile");
			String originalName=mr.getOriginalFileName("upfile");
			String fileSystemName=mr.getFilesystemName("upfile");
			
			//업로드 된 파일의 크기를 얻어서, 업로드가능 크기와 비교한다
			//파일이 크다면 사용자에게 에러메시지를 보여준다 파일을 삭제한다
			File compareFile=new File(saveDir.getAbsolutePath()+"/"+fileSystemName);
			
			
			
			boolean flag=false;
			if(compareFile.length() > maxsize){
				compareFile.delete();
				flag=true;
			}//end if
			pageContext.setAttribute("uploader", uploader);
			pageContext.setAttribute("ageArr", ageArr);
			pageContext.setAttribute("originalName", originalName);
			pageContext.setAttribute("fileSystemName", fileSystemName);
			pageContext.setAttribute("flag", flag);
			%>
			<c:choose>
			<c:when test="${flag }">
			파일 크기가 너무 큽니다
			</c:when>
			<c:otherwise>
			업로드가 잘 되었습니다
				업로더 : <c:out value="${uploader }"/><br>
			대상층 연령 : 
			<c:forEach var="age" items="${ageArr }">
			<c:out value="${age }"/> 
			</c:forEach>
			<br>
			원본 파일명 : <c:out value="${originalName }"/>
			파일명 : <c:out value="${fileSystemName }"/>
			
			<a href="view_img.jsp?img=${fileSystemName }">이미지보기</a>
			</c:otherwise>
			</c:choose>
			
				</div>
				
			</div>
			<hr class="featurette-divider">
			
			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<!-- FOOTER -->
		<footer class="container">
			<jsp:include page="../fragments/footer.jsp"/>
		</footer>
	</main>

</body>
</html>