<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
request.setCharacterEncoding("utf-8");

String userID = (String)session.getAttribute("login_id");

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
	Connection conn = DriverManager.getConnection(url,"test1","1234");

  PreparedStatement pstmt = conn.prepareStatement("delete from customer where customer_id = ?");
  pstmt.setString(1, userID);
  pstmt.executeUpdate();

  pstmt.close();
  conn.close();

} catch(Exception e) {
  e.printStackTrace();
}

response.sendRedirect("logout.jsp");
%>