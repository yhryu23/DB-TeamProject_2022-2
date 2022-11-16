<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<%
String login_id = request.getParameter("userID");
String login_pw = request.getParameter("userPW");

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("select count(*) as recordCount from customer where customer_id = " + login_id);

  while(rs.next()) {
    int recordCount = rs.getInt("recordCount");
    if (recordCount != 1) {
        response.sendRedirect("login.jsp");
        return;
    }
  }

  rs = stmt.executeQuery("select * from customer where customer_id = " + login_id);
  String id, pw;
  while(rs.next()) {
    id = rs.getString("customer_id");
    pw = rs.getString("customer_pw");
    out.println("아이디 : " + id + "</br>");
    out.println("비밀번호 : " + pw + "</br>");
  }
  rs.close();
  stmt.close();
  conn.close();
} catch(SQLException e) {}
%>