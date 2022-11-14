<%@ page contentType="text/html; charset=UTF-8" %>
<header id="header">
  <div class="main-width-screen">
    <div id="header-user">
      <a href="login.jsp">로그인</a>
      <span>|</span>
      <a href="signup.jsp">회원가입</a>
    </div>
    <div id="header-container">
      <a id="header-container__logo" href="home.jsp">
        <h1>Shopping Mall</h1>
      </a>
      <div id="header-container__search">
        <input
          type="text"
          name="search"
          placeholder="검색어를 입력해주세요"
          required
        />
        <button aria-label="submit">
          <a href="#">
            <i class="fa-solid fa-magnifying-glass fa-lg"></i>
          </a>
        </button>
      </div>
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
