<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

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
    <title>Shopping Mall - Update Item</title>
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
          <div class="main-width-screen column-flex-screen">
            <div id="updateitem-form-header">
              <h2 id="updateitem-form-header__title">상품 수정</h2>
            </div>
            <form
              action="updateitemProcess.jsp"
              method="post"
              name="updateitemForm"
              id="updateitem-form"
            >
              <table id="updateitem-table">
                <tr>
                  <th>상품명</th>
                  <td>
                    <input
                      type="text"
                      name="itemName"
                      placeholder="상품명을 입력해주세요"
                      value="<%=outName%>"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>상품 코드</th>
                  <td>
                    <input
                      type="text"
                      name="itemID"
                      placeholder="상품코드를 입력해주세요"
                      value="<%=outID%>"
                      title="상품 코드는 수정할 수 없습니다"
                      readonly
                    />
                  </td>
                </tr>
                <tr>
                  <th>상품 가격</th>
                  <td>
                    <input
                      type="text"
                      name="itemPrice"
                      placeholder="상품가격을 입력해주세요"
                      value="<%=outPrice%>"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>상품 종류</th>
                  <td>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-001"
                      value="운동화"
<% if(outKind.equals("운동화")) { %>
                      checked
<% } %>
                    />
                    <label for="item-kind-001">운동화</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-002"
                      value="스포츠"
<% if(outKind.equals("스포츠")) { %>
                      checked
<% } %>
                    />
                    <label for="item-kind-002">스포츠</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-003"
                      value="구두"
<% if(outKind.equals("구두")) { %>
                      checked
<% } %>
                    />
                    <label for="item-kind-003">구두</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-004"
                      value="샌들"
<% if(outKind.equals("샌들")) { %>
                      checked
<% } %>
                    />
                    <label for="item-kind-004">샌들</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-005"
                      value="부츠"
<% if(outKind.equals("부츠")) { %>
                      checked
<% } %>
                    />
                    <label for="item-kind-005">부츠</label>
                  </td>
                </tr>
                <tr>
                  <th>상품 사이즈</th>
                  <td>
<%
for(Integer i=220; i<=300; i+=5) {
  if(i==255 || i==290) {
%>
                    <br />
<%
  }
%>
                    <input
                      type="checkbox"
                      name="itemSize"
                      value="<%=i%>"
<%
  if(outSize.contains(i.toString())) {
%>
                      checked
<%
  }
%>
                      id="updateitem-size-<%=i%>"
                    />
                    <label for="updateitem-size-<%=i%>"><%=i%></label>
<%
}
%>
                  </td>
                </tr>
                <tr>
                  <th>상품 이미지</th>
                  <td>
                    <input
                      type="text"
                      name="itemImage"
                      placeholder="ex) i1-043.jpg"
                      value="<%=outImage%>"
                    />
                  </td>
                </tr>
              </table>
              <input type="submit" value="상품수정" />
            </form>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>