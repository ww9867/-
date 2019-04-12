<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="DBPKG.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%
	ResultSet rs = null;
	String qurey = null;

	String code = request.getParameter("code");
	String name = request.getParameter("name");
	String cost = request.getParameter("cost");
	String goal = request.getParameter("goal");
	String stock = request.getParameter("stock");
	String release = request.getParameter("release");

	qurey = "insert into submit_01 values('" + code + "', '" + name + "', '" + cost + "', '" + goal + "', '"+ stock + "','" + release + "')";
	rs = dbconn.exec_sql(qurey);

	System.out.print("sql :" + rs);

	response.sendRedirect("index.jsp");
%>