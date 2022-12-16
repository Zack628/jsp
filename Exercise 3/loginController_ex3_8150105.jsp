<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8150105.jsp"%>
<%@ page import="exercise3_2022_2023_8150105.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");


UserDAO dao = new UserDAO();


try{
    
    User usr = dao.authenticate(username,password);
    session.setAttribute("userObj2022", usr);

%>

<jsp:forward page ="dashboard_ex3_8150105.jsp" />

<%
} catch (Exception e) {

    request.setAttribute("message", e.getMessage());
%>

<jsp:forward page ="login_ex3_8150105.jsp" />

<%

}
%>


