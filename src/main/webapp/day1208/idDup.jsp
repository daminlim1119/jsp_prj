<%@page import="org.json.simple.JSONObject"%>
<%@page import="kr.co.sist.user.member.WebMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
String id=request.getParameter("id");

WebMemberService wms=WebMemberService.getInstance();
boolean flag=wms.searchId(id);//true면 아이디 없음-사용가능


JSONObject jsonObj=new JSONObject();
jsonObj.put("idResult",flag);
out.print(jsonObj.toJSONString());

%>