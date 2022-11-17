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

  rs.next();
  int recordCount = rs.getInt("recordCount");
  if(recordCount != 1) {
%>
    <script language="JavaScript">
      alert("존재하지 않는 아이디입니다.");
      history.go(-1);
    </script>
<%
  }

  rs = stmt.executeQuery("select * from customer where customer_id = " + login_id);
  String id, pw;
  rs.next();
  id = rs.getString("customer_id");
  pw = rs.getString("customer_pw");
  if(!login_pw.equals(pw)) {
%>
    <script language="JavaScript">
      alert("비밀번호가 일치하지 않습니다.");
      history.go(-1);
    </script>
<%
  }
  else {
  session.setAttribute("loginID", id);
  }

  rs.close();
  stmt.close();
  conn.close();
} catch(SQLException e) {}
%>

<% response.sendRedirect("home.jsp"); %>