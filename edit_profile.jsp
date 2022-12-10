<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<%
request.setCharacterEncoding("utf-8");

String userID = (String)session.getAttribute("login_id");
String userName = null, userPW = null, userBirthday = null;
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
    <title>Shopping Mall - Edit Profile</title>
    <script
      src="https://kit.fontawesome.com/c53c47d58c.js"
      crossorigin="anonymous"
    ></script>
    <script language="JavaScript">
      function editprof_submit_check() {
        if (
          document.editprofForm.userPW01.value !=
          document.editprofForm.userPW02.value
        ) {
          alert("비밀번호가 일치하지 않습니다.");
          document.editprofForm.userPW01.value = "";
          document.editprofForm.userPW02.value = "";
          document.editprofForm.userPW01.focus();
          return false;
        } else {
          return true;
        }
      }
    </script>
  </head>
  <body>
    <div id="wrap-header-main-001">
      <div id="wrap-header-main-002">
        <%@ include file="header.jsp" %>
        <%@ include file="nav.jsp" %>
        <main>
          <div class="main-width-screen column-flex-screen">
            <div id="editprof-form-header">
              <h2 id="editprof-form-header__title">회원정보 수정</h2>
              <span id="editprof-form-header__requirement">
                ID 5자 이상, PW 6자 이상
              </span>
            </div>
            <form
              action="editprofProcess.jsp"
              method="post"
              name="editprofForm"
              id="editprof-form"
              onsubmit="return editprof_submit_check();"
            >
              <table id="editprof-table">
                <tr>
                  <th>이름</th>
                  <td>
                    <input
                      type="text"
                      name="userName"
                      placeholder="이름을 입력해주세요"
                      maxlength="20"
                      value="<%=userName%>"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>아이디</th>
                  <td>
                    <input
                      type="text"
                      name="userID"
                      placeholder="아이디를 입력해주세요"
                      minlength="5"
                      maxlength="20"
                      value="<%=userID%>"
                      readonly
                    />
                  </td>
                </tr>
                <tr>
                  <th>비밀번호</th>
                  <td>
                    <input
                      type="password"
                      name="userPW01"
                      placeholder="비밀번호를 입력해주세요"
                      minlength="6"
                      maxlength="20"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>비밀번호 확인</th>
                  <td>
                    <input
                      type="password"
                      name="userPW02"
                      placeholder="비밀번호를 입력해주세요"
                      maxlength="20"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>휴대폰 번호</th>
                  <td>
                    <select name="userTel" required>
                      <option value="010" selected>010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="019">019</option>
                    </select>
                    &nbsp;-&nbsp;
                    <input
                      type="text"
                      name="userTel"
                      minlength="4"
                      maxlength="4"
                      required
                    />
                    &nbsp;-&nbsp;
                    <input
                      type="text"
                      name="userTel"
                      minlength="4"
                      maxlength="4"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td>
                    <input
                      type="text"
                      name="userEmail"
                      maxlength="20"
                      required
                    />
                    &nbsp;@&nbsp;
                    <select name="userEmail">
                      <option value="naver.com" selected>naver.com</option>
                      <option value="gmail.com">gmail.com</option>
                      <option value="hanmail.net">hanmail.net</option>
                      <option value="hotmail.com">hotmail.com</option>
                      <option value="korea.com">korea.com</option>
                      <option value="nate.com">nate.com</option>
                      <option value="yahoo.com">yahoo.com</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th>생일</th>
                  <td>
                    <input
                      type="text"
                      name="userBirthday"
                      placeholder="ex) 990403"
                      minlength="6"
                      maxlength="6"
                      value="<%=userBirthday%>"
                      required
                    />
                  </td>
                </tr>
              </table>
              <input type="submit" value="회원정보 수정" />
            </form>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
