<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../fragments/siteProperty.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); 
			




	
%>

<c:choose>
			
				업로더 : <c:out value="${param.uploader }"/><br>
			대상층 연령 : 
			<c:forEach var="age" items="${prarmValues.age }">
			<c:out value="${age }"/> 
			</c:forEach>
			<br>
			파일명 : <c:out value="${profile }"/>
			
			</c:choose>