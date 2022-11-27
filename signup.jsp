<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css?after" />
    <title>Shopping Mall - SignUp</title>
    <script
      src="https://kit.fontawesome.com/c53c47d58c.js"
      crossorigin="anonymous"
    ></script>
    <script language="JavaScript">
      function signup_submit_check() {
        if (
          document.signupForm.userPW01.value !=
          document.signupForm.userPW02.value
        ) {
          alert("비밀번호가 일치하지 않습니다.");
          document.signupForm.userPW01.value = "";
          document.signupForm.userPW02.value = "";
          document.signupForm.userPW01.focus();
          return false;
        } else {
          return true;
        }
      }
    </script>
  </head>
  <body>
    <div id="wrap-header-main-001">
      <div id="wrap-header-main-002">
        <%@ include file="header.jsp" %>
        <%@ include file="nav.jsp" %>
        <main>
          <div class="main-width-screen" id="signup-main-container">
            <div id="signup-form-header">
              <h2 id="signup-form-header__title">회원가입</h2>
              <span id="signup-form-header__requirement">
                ID 5자 이상, PW 6자 이상 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                필수항목<sup>*</sup>
              </span>
            </div>
            <form
              action="signupProcess.jsp"
              method="post"
              name="signupForm"
              id="signup-form"
              onsubmit="return signup_submit_check();"
            >
              <table id="signup-table">
                <tr>
                  <th>이름<sup>*</sup></th>
                  <td>
                    <input
                      type="text"
                      name="userName"
                      placeholder="이름을 입력해주세요"
                      maxlength="20"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>아이디<sup>*</sup></th>
                  <td>
                    <input
                      type="text"
                      name="userID"
                      placeholder="아이디를 입력해주세요"
                      minlength="5"
                      maxlength="20"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>비밀번호<sup>*</sup></th>
                  <td>
                    <input
                      type="password"
                      name="userPW01"
                      placeholder="비밀번호를 입력해주세요"
                      minlength="6"
                      maxlength="20"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>비밀번호 확인<sup>*</sup></th>
                  <td>
                    <input
                      type="password"
                      name="userPW02"
                      placeholder="비밀번호를 입력해주세요"
                      maxlength="20"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>휴대폰 번호<sup>*</sup></th>
                  <td>
                    <select name="userTel" required>
                      <option value="" disabled selected>::선택::</option>
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="019">019</option>
                    </select>
                    &nbsp;-&nbsp;
                    <input
                      type="text"
                      name="userTel"
                      minlength="4"
                      maxlength="4"
                      required
                    />
                    &nbsp;-&nbsp;
                    <input
                      type="text"
                      name="userTel"
                      minlength="4"
                      maxlength="4"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td>
                    <input type="text" name="userEmail" maxlength="20" />
                    &nbsp;@&nbsp;
                    <select name="userEmail">
                      <option value="" disabled selected>
                        ::::::선택::::::
                      </option>
                      <option value="naver.com">naver.com</option>
                      <option value="gmail.com">gmail.com</option>
                      <option value="hanmail.net">hanmail.net</option>
                      <option value="hotmail.com">hotmail.com</option>
                      <option value="korea.com">korea.com</option>
                      <option value="nate.com">nate.com</option>
                      <option value="yahoo.com">yahoo.com</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th>생일</th>
                  <td>
                    <input
                      type="text"
                      name="userBirthday"
                      placeholder="ex) 990403"
                      maxlength="6"
                    />
                  </td>
                </tr>
              </table>
              <input type="submit" value="회원가입" />
            </form>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
