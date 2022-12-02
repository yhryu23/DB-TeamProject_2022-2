<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
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
        <%@ include file="header.jsp" %>
        <%@ include file="nav.jsp" %>
        <main>
          <div class="screen-width">
<%
String outName, outImage;
int outPrice;

String item = null;
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
%>
            <div class="sectionwrap row">
              <div class="productlist cell">
                <div class="imgbox">
                  <% out.print("<img src=./image/" + outImage + ">");%>
                </div>
                <div class="txtbox">
                  이름: <%=outName%><br />
                  가격: <%=outPrice%><br />
                </div>
              </div>
              <div class="productlist cell">
                <div class="imgbox"></div>
                <div class="txtbox">
                  이름:<br />
                  가격:<br />
                </div>
              </div>
              <div class="productlist cell">
                <div class="imgbox"></div>
                <div class="txtbox">
                  이름:<br />
                  가격:<br />
                </div>
              </div>
              <div class="productlist cell">
                <div class="imgbox"></div>
                <div class="txtbox">
                  이름:<br />
                  가격:<br />
                </div>
              </div>
              <div class="productlist cell">
                <div class="imgbox"></div>
                <div class="txtbox">
                  이름:<br />
                  가격:<br />
                </div>
              </div>
              <div class="productlist cell">
                <div class="imgbox"></div>
                <div class="txtbox">
                  이름:<br />
                  가격:<br />
                </div>
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
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
