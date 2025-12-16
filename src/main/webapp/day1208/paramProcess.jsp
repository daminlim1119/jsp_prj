<%@page import="java.time.LocalDate"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 

request.setCharacterEncoding("UTF-8");

String name=request.getParameter("na");
String age=request.getParameter("age");

System.out.println(request.getMethod()+"/"+name + "/" + age);

//JSONObject을 응답
int nowYear=LocalDate.now().getYear();
//int nowYear=Calendar.getInstance().get(Calendar.YEAR);
//1.JSONObject을 생성 (map 기반)

JSONObject jsonObj=new JSONObject();
int intAge=0;
if(age !=null && age.isEmpty()){
	
	intAge=Integer.parseInt(age);
}
//2.JSONObject에 응답할 값 설정
jsonObj.put("name",name+"님 안녕하세요");
jsonObj.put("age",intAge+"살");
//3.JSONObject 출력
%>