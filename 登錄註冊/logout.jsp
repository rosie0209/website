<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

<% 
session.removeAttribute("role");
session.removeAttribute("member");
session.removeAttribute("admin");
response.sendRedirect("index.jsp") ;
%>