<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.sql.*, javax.sql.DataSource" %>

<%
request.setCharacterEncoding("utf-8");

String userID = request.getParameter("userID");
String userPW = request.getParameter("userPW");

PreparedStatement pstmt = null;
String sql = "";
boolean isMaster = false;

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");

  sql = "SELECT * FROM customer WHERE customer_id = ? and customer_pw = ?";
  pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, userID);
  pstmt.setString(2, userPW);
  ResultSet rs = pstmt.executeQuery();
  
  if(rs.next()) {
    session.setAttribute("login_id", userID);
    session.setAttribute("isMaster", isMaster);
  }
  
  else {
    sql = "select * from master where master_id = ? and master_pwd = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, userID);
    pstmt.setString(2, userPW);
    rs = pstmt.executeQuery();
    
    if(rs.next()) {
      session.setAttribute("login_id", userID);
      isMaster = true;
      session.setAttribute("isMaster", isMaster);
    }
  }
  
  rs.close();
  pstmt.close();
  conn.close();
} catch (Exception e) {
  System.out.println("연결에 실패하였습니다.(member_login)");
  out.println("<h3>연결에 실패하였습니다.(member_login)</h3>");
}
if(session.getAttribute("login_id") == null) {
%>
<script>
  alert("아이디 혹은 비밀번호가 틀렸습니다");
  location.href = "login.jsp";
</script>
<%
}
else {
  response.sendRedirect("home.jsp");
}
%>
