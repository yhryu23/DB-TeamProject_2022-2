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
        <%@ include file="header.jsp" %>
        <%@ include file="nav.jsp" %>
        <main>
          <div class="screen-width">
            <div class="sectionwrap row">
<%
String outName, outImage, outID;
int outPrice;

String item = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");
  
  switch(this_category) {
    case 1 : item = "select * from itemdata where kind = '운동화'"; break;
    case 2 : item = "select * from itemdata where kind = '스포츠'"; break;
    case 3 : item = "select * from itemdata where kind = '구두'"; break;
    case 4 : item = "select * from itemdata where kind = '샌들'"; break;
    case 5 : item = "select * from itemdata where kind = '부츠'"; break;
    default : item = "select * from itemdata"; break;
  }
  pstmt = conn.prepareStatement(item);
  rs = pstmt.executeQuery();
  
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
                  <a href="viewItem.jsp?itemID=<%=outID%>">상품 상세 페이지</a>
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
