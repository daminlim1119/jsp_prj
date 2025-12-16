<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%//post방식일 때의 한글 처리
    request.setCharacterEncoding("UTF-8");  
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<strong><%= request.getMethod() %></strong> 방식요청<br>
<%
//web parameter의 이름이 같다면 배열로 처리된다
//form control이 하나일지라도 가능
String[]lang=request.getParameterValues("language");
String[]license=request.getParameterValues("license");
%>
<strong>선택 언어</strong>
<%
if(lang != null){
for(int i=0;i<lang.length;i++){
	%>
	<%=lang[i] %>
	<%
}//end for
}else{
	%>관심언어가 없습니다<%
	
}//end else
%>
<br>
<strong>자격증</strong>
<%
if(license.length ==1 && license[0].trim().isEmpty()){
%> 자격증이 없습니다   <% 
}
for(int i=0;i<license.length;i++){
	%>
	<%= license[i] %>
	
	<% 
}//end for
%>
</div>
</body>
</html>