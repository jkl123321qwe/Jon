<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

	<%
	String dbURL = "jdbc:mysql://192.168.0.100:3306/user06?useUnicode=true&characterEncoding=utf8";
	
	String dbID = "user06";
	String dbPassword = "user06";
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	PreparedStatement pstmt = conn.prepareStatement("select * from member where id=? and pw=?");
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	 
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		session.setAttribute("id", id);
		session.setAttribute("name", rs.getString("name"));
		session.setAttribute("login", null);
		//로그인 성공했을 때 이동할 페이지
		response.sendRedirect("write.jsp");
	}else{
		//로그인 실패했을 때 이동할 페이지
		session.setAttribute("login", "fail");
		response.sendRedirect("login.jsp");
	}
	rs.close();
	pstmt.close();
	conn.close();
	
	%>
