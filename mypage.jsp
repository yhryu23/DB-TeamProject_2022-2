<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, javax.sql.DataSource" %>
<%@ page import="javax.naming.*" %>

<%
request.setCharacterEncoding("utf-8");
String userID = (String)session.getAttribute("login_id");
String userName = null, userPW = null, userTel = null, userEmail = null, userBirthday = null;
String sql = "select * from customer where customer_id = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");
  
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, userID);
  ResultSet rs = pstmt.executeQuery();
  
  if(rs.next()) {
    userName = rs.getString(1);
    userPW = rs.getString(3);
    userTel = rs.getString(4);
    userEmail = rs. getString(5);
    userBirthday = rs.getString(6);
  }
  
  rs.close();
  pstmt.close();
  conn.close();

} catch(Exception e) {
  e.printStackTrace();
}
%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css?after" />
    <title>Shopping Mall - My Page</title>
    <script
      src="https://kit.fontawesome.com/c53c47d58c.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div id="wrap-header-main-001">
      <div id="wrap-header-main-002">
        <%@ include file="header.jsp"%>
        <%@ include file="nav.jsp" %>
        <main>
          <div class="screen-width column-flex-screen">
            <div id="view-profile-main-screen">
              <div id="view-profile">
                <div>
                  <span>이름 : </span>
                  <span><%=userName%></span>
                </div>
                <div>
                  <span>아이디 : </span>
                  <span><%=userID%></span>
                </div>
                <div>
                  <span>전화번호 : </span>
                  <span><%=userTel%></span>
                </div>
                <div>
                  <span>이메일 : </span>
                  <span><%=userEmail%></span>
                </div>
                <div>
                  <span>생일 : </span>
                  <span><%=userBirthday%></span>
                </div>
              </div>
              <div>
                <a href="edit_profile.jsp">회원정보 수정</a>
                <span>|</span>
                <a
                  href="delete_account.jsp"
                  onclick="return confirm('정말 회원탈퇴하시겠습니까?');"
                  >회원탈퇴
                </a>
              </div>
            </div>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
