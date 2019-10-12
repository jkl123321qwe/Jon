<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	
	String dbURL = "jdbc:mysql://192.168.0.100:3306/user06?useUnicode=true&characterEncoding=utf8";

	String dbID = "user06";
	String dbPassword = "user06";
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

	request.setCharacterEncoding("utf-8");
	
	PreparedStatement pstmt = conn.prepareStatement("insert into member(id, pw, name, phone) values(?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, number);

	pstmt.executeUpdate();

	pstmt.close();
	conn.close();

	response.sendRedirect("login.jsp");
%>