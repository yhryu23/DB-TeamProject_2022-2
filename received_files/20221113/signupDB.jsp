<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
   request.setCharacterEncoding("utf-8");
%>

<% 
    String user_name = request.getParameter("username");
    String user_date = request.getParameter("userdate");
    String user_id= request.getParameter("userid");
    String user_pw = request.getParameter("userpw");
    String userpw_check = request.getParameter("userpwcheck");
    String gender_ = request.getParameter(request.getParameter("gender"));
    String phoneno_1 = request.getParameter("phoneno1");
    String phoneno_2 = request.getParameter("phoneno2");
    String phoneno_3 = request.getParameter("phoneno3");
    String email_ = request.getParameter("email");
    String mail_select = request.getParameter("mailselect");
    String member_sort = request.getParameter("membersort");

    Class.forName("oracle.jdbc.driver.OracleDriver");

    try{
        String url = "jdbc:oracle:thin:@127.0.0.1:1527";
	    Connection conn = DriverManager.getConnection(url,"syntax","1234");
	
	    PreparedStatement pstmt = conn.prepareStatement("Insert into userinfo values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
        pstmt.setString(1, user_name);
        pstmt.setString(2, user_date);
        pstmt.setString(3, user_id);
        pstmt.setString(4, user_pw);
        pstmt.setString(5, userpw_check);
        pstmt.setString(6, gender_);
        pstmt.setString(7, phoneno_1);
        pstmt.setString(8, phoneno_2);
        pstmt.setString(9, phoneno_3);
        pstmt.setString(10, email_);
        pstmt.setString(11, mail_select);
        pstmt.setString(12, member_sort);
        
        pstmt.executeUpdate();

        pstmt.close();
        conn.close();
    }catch(Exception e){

    }
%>

<%
  response.sendRedirect("DBtable.jsp");  
%>