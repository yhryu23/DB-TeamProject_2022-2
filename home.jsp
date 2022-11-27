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
    <script src="slideShow.js"></script>
  </head>
  <body>
    <div id="wrap-header-main-001">
      <div id="wrap-header-main-002">
        <%@ include file="header.jsp" %>
        <main>
          <div class="main-width-screen">
<%
String outName, outSize, outImage;
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
    outSize = rs.getString(3);
    outImage = rs.getString(4);
%>
            <div id="slideShow">
              <ul class="slides">
                <li><img src=./shoesimages/" + outImage + " alt=""></li>
                <li><img src=./shoesimages/" + outImage + " alt=""></li>
                <li><img src=./shoesimages/" + outImage + " alt=""></li>
                <li><img src=./shoesimages/" + outImage + " alt=""></li>
              </ul>
              <p class="controller">
                <span class="prev">&lang;</span>
                <span class="next">&rang;</span>
              </p>
            </div>

            <div style="position: relative; left: 500px; top: 50px">
              <% out.print("<img src=./shoesimages/" + outImage + ">"); %>
            </div>
            <div style="position: relative; left: 500px; top: 100px">
              <%=outName %>
            </div>
            <div style="position: relative; left: 500px; top: 120px">
              가격 <%=outPrice %>
            </div>
            <div style="position: relative; left: 500px; top: 130px">
              사이즈 <%=outSize %>
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
    </div>
    <%@ include file="footer.jsp" %>
  </body>
</html>
