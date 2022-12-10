<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css?after" />
    <title>Shopping Mall - Add Item</title>
    <script
      src="https://kit.fontawesome.com/c53c47d58c.js"
      crossorigin="anonymous"
    ></script>
    <script>
      function isChecked() {
        sizecheck = document.getElementsByName("itemSize");

        for (count = i = 0; i < sizecheck.length; i++)
          count += sizecheck[i].checked;

        if (count == 0) {
          alert("사이즈는 하나 이상 선택해주세요.");
          return false;
        }
        return true;
      }
    </script>
  </head>
  <body>
    <div id="wrap-header-main-001">
      <div id="wrap-header-main-002">
        <%@ include file="header.jsp" %>
        <%@ include file="nav.jsp" %>
        <main>
          <div class="main-width-screen column-flex-screen">
            <div id="additem-form-header">
              <h2 id="additem-form-header__title">상품 등록</h2>
            </div>
            <form
              onsubmit="return isChecked();"
              action="additemProcess.jsp"
              method="post"
              name="additemForm"
              id="additem-form"
            >
              <table id="additem-table">
                <tr>
                  <th>상품명</th>
                  <td>
                    <input
                      type="text"
                      name="itemName"
                      placeholder="상품명을 입력해주세요"
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
                      required
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
                      checked
                    />
                    <label for="item-kind-001">운동화</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-002"
                      value="스포츠"
                    />
                    <label for="item-kind-002">스포츠</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-003"
                      value="구두"
                    />
                    <label for="item-kind-003">구두</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-004"
                      value="샌들"
                    />
                    <label for="item-kind-004">샌들</label>
                    <input
                      type="radio"
                      name="itemKind"
                      id="item-kind-005"
                      value="부츠"
                    />
                    <label for="item-kind-005">부츠</label>
                  </td>
                </tr>
                <tr>
                  <th>상품 사이즈</th>
                  <td>
<%
for(int i=220; i<=300; i+=5) {
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
                      id="additem-size-<%=i%>"
                    />
                    <a href="javascript:check()"></a>
                    <label for="additem-size-<%=i%>"><%=i%></label>

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
                    />
                  </td>
                </tr>
              </table>
              <input type="submit" value="상품등록" />
            </form>
          </div>
        </main>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
