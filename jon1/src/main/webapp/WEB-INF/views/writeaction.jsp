<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String dbURL = "jdbc:mysql://192.168.0.100:3306/user06?useUnicode=true&characterEncoding=utf8";

String dbID = "user06";
String dbPassword = "user06";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String content = request.getParameter("content");
PreparedStatement pstmt = conn.prepareStatement("insert into message(name, content, regdate) values(?,?,curdate())");
pstmt.setString(1, name);
pstmt.setString(2, content);

pstmt.executeUpdate();

pstmt.close();
conn.close();

response.sendRedirect("newwrite.jsp");

%>