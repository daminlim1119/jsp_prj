<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//scriptlet
String name="임다민";
%>
안녕하세요 <span><%= name %></span>님<br>
<ul>
<%
for(int i=0;i<10;i++){
%>
<!-- html영역 -->
<li><%= i %></li>
<% 	
}
%>
</ul>
<!-- 테이블에 구구단 2단 -->
<table style="border:1px solid black; border-spacing:0px">
<tr>
<% for(int i=1;i<10;i++){
%>
<td style="border:1px solid black">
<!-- html영역 -->
2x<%=i %>
</td>
<% }
%>
</tr>

</table>

<div>
<%for(int i=1;i<7;i++){ %>
<h<%=i %>>안녕하세요?</h<%=i %>>

<%}//end for %>
</div>

<div>
구구단 모든 단 테이블로
<table style="border:1px solid black; border-spacing:0px">
<% for(int i=1;i<10;i++){%>
<tr >
<% for(int j=2;j<10;j++){%>
<td style="border:1px solid black;">
<%=j %>x<%=i %>=<%=j*i %>
</td>
<%} %>
</tr >
<%} %>
</table>
</div>


</body>
</html>