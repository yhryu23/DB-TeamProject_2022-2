<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css?after" />
    <title>Shopping Mall - Login</title>
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
          <div class="main-width-screen" id="login-main-container">
            <form
              action="loginProcess.jsp"
              method="post"
              name="loginForm"
              id="login-form"
            >
              <input
                type="text"
                name="userID"
                placeholder="아이디를 입력해주세요"
                minlength="5"
                maxlength="20"
                id="login-id"
                required
              />
              <input
                type="password"
                name="userPW"
                placeholder="비밀번호를 입력해주세요"
                minlength="6"
                maxlength="20"
                id="login-pw"
                required
              />
              <input type="submit" value="로그인" />
            </form>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
