<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
//리스트는 web paramater로 넘어갈 수 없다 String만 넘어갈 수 있음
List<String>names=new ArrayList<String>();
names.add("루피");
names.add("쵸파");
names.add("샹디");
names.add("나미");

request.setAttribute("names", names);//scope객체에 데이터를 할당

String name="민병조";//scope객체에 넘겨도 되지만 parameter로 넘기고 싶다
int age=20;
%>
<!-- parameter가 없는 경우 -->
<%-- <jsp:forward page="forward_action_b.jsp"/> --%>

<!-- parameter가 있는 경우 -->
<jsp:forward page="forward_action_b.jsp">
<jsp:param value="<%= name %>" name="name"/>
<jsp:param value="<%= age %>" name="age"/>
</jsp:forward>
