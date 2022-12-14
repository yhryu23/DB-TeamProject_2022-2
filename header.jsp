<%@ page contentType="text/html; charset=UTF-8" %>

<header id="header">
  <div class="screen-width">
    <div id="header-user">
<%
String loginID = (String)session.getAttribute("login_id");
if(loginID != null) {
  if((boolean)session.getAttribute("isMaster")) {
%>
      <%=loginID%>님
      <span>|</span>
      <a href="add_item.jsp">상품 등록</a>
      <span>|</span>
      <a href="logout.jsp">로그아웃</a>
<%
  }
  else {
%>
      <%=loginID%>님
      <span>|</span>
      <a href="mypage.jsp">내 정보</a>
      <span>|</span>
      <a href="logout.jsp">로그아웃</a>
<%
  }
}
else {
%>
      <a href="login.jsp">로그인</a>
      <span>|</span>
      <a href="signup.jsp">회원가입</a>
<%
}
%>
    </div>
    <div id="header-container">
      <a id="header-container__logo" href="home.jsp">
        <h1>Shopping Mall</h1>
      </a>
      <form action="view.jsp" method="get" id="header-container__search">
        <input
          type="text"
          name="search"
          placeholder="검색어를 입력해주세요"
<%
String search_item = request.getParameter("search");
if(search_item != null) {
%>
          value="<%=search_item%>"
<%
}
%>
          required
        />
        <button type="submit">
          <a href="#">
            <i class="fa-solid fa-magnifying-glass fa-lg"></i>
          </a>
        </button>
      </form>
      <div id="header-container__goods">
        <a href="#">
          <i class="fa-regular fa-heart fa-2x"></i>
        </a>
        <a href="#">
          <i class="fa-solid fa-bag-shopping fa-2x"></i>
        </a>
      </div>
    </div>
  </div>
</header>
