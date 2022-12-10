<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
String customer_name = request.getParameter("userName");
String customer_id = request.getParameter("userID");
String customer_pw = request.getParameter("userPW01");
String[] tel = request.getParameterValues("userTel");
String[] email = request.getParameterValues("userEmail");
String customer_birthday = request.getParameter("userBirthday");
String customer_tel = tel[0];
String customer_email = email[0];

for(int i=1; i<tel.length; i++) {
  customer_tel = customer_tel + "-" + tel[i];
}
customer_email = customer_email + "@" + email[1];

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");

  PreparedStatement pstmt = conn.prepareStatement("update customer set customer_name = ?, customer_pw = ?, customer_tel = ?, customer_email = ?, customer_birthday = ? where customer_id = ?");

  pstmt.setString(1, customer_name);
  pstmt.setString(2, customer_pw);
  pstmt.setString(3, customer_tel);
  pstmt.setString(4, customer_email);
  pstmt.setString(5, customer_birthday);
  pstmt.setString(6, customer_id);

  pstmt.executeUpdate();

  pstmt.close();
  conn.close();

} catch(Exception e) {
  e.printStackTrace();
}
%>

<script language="JavaScript">
  alert("회원정보가 수정되었습니다!\n로그아웃됩니다.");
  location.href = "logout.jsp";
</script>