<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
String item_name = request.getParameter("itemName");
String item_id = request.getParameter("itemID");
int item_price = Integer.parseInt(request.getParameter("itemPrice"));
String item_kind = request.getParameter("itemKind");
String item_image = request.getParameter("itemImage");
String[] tmp = request.getParameterValues("itemSize");
String item_size = tmp[0];

for(int i=1; i<tmp.length; i++) {
  item_size = item_size + "," + tmp[i];
}

Class.forName("oracle.jdbc.driver.OracleDriver");

try {
  String url = "jdbc:oracle:thin:@127.0.0.1:1521";
  Connection conn = DriverManager.getConnection(url,"test1","1234");

  PreparedStatement pstmt = conn.prepareStatement("update itemdata set name = ?, price = ?, shoesize = ?, image = ?, kind = ? where id = ?");

  pstmt.setString(1, item_name);
  pstmt.setInt(2, item_price);
  pstmt.setString(3, item_size);
  pstmt.setString(4, item_image);
  pstmt.setString(5, item_kind);
  pstmt.setString(6, item_id);

  pstmt.executeUpdate();

  pstmt.close();
  conn.close();

} catch(Exception e) {
  e.printStackTrace();
}
%>

<script language="JavaScript">
  alert("상품정보가 수정되었습니다!");
  location.href = "home.jsp";
</script>