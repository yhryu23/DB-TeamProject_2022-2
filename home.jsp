<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, javax.sql.DataSource" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css?after" />
    <title>Shopping Mall - Home</title>
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
          <div class="screen-width">
            <div class="section">
              <input type="radio" name="slide" id="refund" checked="" />
              <input type="radio" name="slide" id="sale" />
              <input type="radio" name="slide" id="c" />

              <div class="slidewrap">
                <ul class="slidelist">
                  <li>
                    <a>
                      <img src="./banner-image/refund.jpg" />
                    </a>
                  </li>

                  <li>
                    <a>
                      <img src="./banner-image/sale.jpg" />
                    </a>
                  </li>

                  <li>
                    <a>
                      <img src="./banner-image/c.jpg" />
                    </a>
                  </li>
                </ul>

                <div class="slide-control">
                  <div class="control1">
                    <label for="c" class="left"></label>
                    <label for="sale" class="right"></label>
                  </div>

                  <div class="control2">
                    <label for="refund" class="left"></label>
                    <label for="c" class="right"></label>
                  </div>

                  <div class="control3">
                    <label for="sale" class="left"></label>
                    <label for="refund" class="right"></label>
                  </div>
                </div>
              </div>
            </div>

            <div class="sectionwrap row">
<%
String outName, outImage, outID;
int outPrice; String item = null;

PreparedStatement pstmt = null;
ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");

  item = "select * from itemdata";
  pstmt = conn.prepareStatement(item);
  rs = pstmt.executeQuery(item);
  while(rs.next()) {
    outName = rs.getString(1);
    outPrice = rs.getInt(2);
    outImage = rs.getString(4);
    outID = rs.getString(5);
  %>
              <div class="productlist cell">
                <div class="imgbox">
                  <% out.print("<img src=./item-image/" + outImage + ">"); %>
                </div>
                <div class="txtbox">
                  이름: <%=outName%><br />
                  가격: <%=outPrice%><br /><br />
                  <a href="viewItem.jsp?itemID=<%=outID%>">상품 페이지 이동</a>
                </div>
              </div>
<%
  }
  
  rs.close();
  pstmt.close();
  conn.close();

} catch(Exception e) {
  e.printStackTrace();
}
%>
            </div>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
