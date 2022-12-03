<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, javax.sql.DataSource" %>
<%@ page import="javax.naming.*" %>

<%
request.setCharacterEncoding("utf-8");

String outID = request.getParameter("itemID");

String outName = null, outSize = null, outImage = null, outKind = null;
int outPrice = 0;

String sql = "select * from itemdata where id = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");

  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, outID);
  ResultSet rs = pstmt.executeQuery();
  
  if(rs.next()) {
    outName = rs.getString(1);
    outPrice = rs.getInt(2);
    outKind = rs.getString(6);
    outSize = rs.getString(3);
    outImage = rs.getString(4);
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
    <title>Shopping Mall - Item Detail</title>
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
          <div class="screen-width" id="item-detail-main-screen">
            <div id="item-description">
              <div id="item-description__image">
                <% out.print("<img src=./item-image/" + outImage + ">"); %>
              </div>
              <div id="item-description__text">
                <div>
                  <span>상품명 : </span>
                  <span><%=outName%></span>
                </div>
                <div>
                  <span>상품코드 : </span>
                  <span><%=outID%></span>
                </div>
                <div>
                  <span>가격 : </span>
                  <span><%=outPrice%></span>
                </div>
                <div>
                  <span>상품분류 : </span>
                  <span><%=outKind%></span>
                </div>
                <div>
                  <span>사이즈 : </span>
                  <span><%=outSize%></span>
                </div>
              </div>
            </div>
            <button aria-label="submit">구매하기</button>
<%
if(loginID != null) {
  if((boolean)session.getAttribute("isMaster")) {
%>
            <div id="master-option">
              <span>관리자 옵션</span><br />
              <a href="update_item.jsp?itemID=<%=outID%>">수정</a>
              <span>|</span>
              <a
                href="delete_item.jsp?itemID=<%=outID%>"
                onclick="return confirm('정말 삭제하시겠습니까?');">
                삭제
              </a>
            </div>
<%
  }
}
%>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
