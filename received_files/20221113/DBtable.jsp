<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("utf-8");
%>

<html>
<head>
<title>회원 정보 페이지</title>
</head>
<body>
<h2>회원 정보</h2>
<hr/>	


<table border=1>
	<tr>
		<td>이름</td>
		<td>날짜</td>
		<td>아이디</td>
		<td>암호</td>
		<td>암호체크</td>
		<td>성별</td>
		<td>폰번1</td>
		<td>폰번2</td>
		<td>폰번3</td>
		<td>이메일</td>
		<td>이메일</td>
		<td>관리자</td>
	</tr>
<%
	String username, userdate, userid, userpw, userpwcheck, gender, phoneno1, phoneno2, phoneno3, email, mailselect, membersort;
	
   Class.forName("oracle.jdbc.driver.OracleDriver");
   
   try{
	   String url = "jdbc:oracle:thin:@127.0.0.1:1521";
	   Connection conn = DriverManager.getConnection(url,"syntax","1234");
	   
	   Statement stmt = conn.createStatement();
	   
	   String USERDATA = "SELECT * FROM userinfo";
	   ResultSet rs = stmt.executeQuery(USERDATA);	
   
	   while(rs.next()){
		   username = rs.getString("user_name");
		   userdate = rs.getString("user_date");
		   userid = rs.getString("user_id");
		   userpw = rs.getString("user_pw");
		   userpwcheck = rs.getString("userpw_check");
		   gender = rs.getString("gender_");
		   phoneno1 = rs.getString("phoneno_1");
		   phoneno2 = rs.getString("phoneno_2");
		   phoneno3 = rs.getString("phoneno_3");
		   email = rs.getString("email_");
		   mailselect = rs.getString("mail_select");
		   membersort = rs.getString("member_sort");	   
   %> 
   <tr>
	<td><%=username%></td>
	<td><%=userdate%></td>
	<td><%=userid%></td>
	<td><%=userpw%></td>
	<td><%=userpwcheck%></td>
	<td><%=gender%></td>
	<td><%=phoneno1%></td>
	<td><%=phoneno2%></td>
	<td><%=phoneno3%></td>
	<td><%=email%></td>
	<td><%=mailselect%></td>
	<td><%=membersort%></td>
</tr>

<%
	}
        rs.close();
        stmt.close();
        conn.close();
   }catch(SQLException e){

   }
%>

</table>
</body>
</html>