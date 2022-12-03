<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
request.setCharacterEncoding("utf-8");
String itemID = request.getParameter("itemID");

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
	Connection conn = DriverManager.getConnection(url,"test1","1234");

  PreparedStatement pstmt = conn.prepareStatement("delete from itemdata where id = ?");
  pstmt.setString(1, itemID);
  pstmt.executeUpdate();

  pstmt.close();
  conn.close();

} catch(Exception e) {
  e.printStackTrace();
}

response.sendRedirect("view.jsp");
%>