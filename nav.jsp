<%@ page contentType="text/html; charset=UTF-8" %>

<%
int this_category = 0;
if(request.getParameter("category") != null) {
  this_category = Integer.parseInt(request.getParameter("category"));
}
%>

<nav id="nav-001">
  <ul class="screen-width">
    <li><a href="view.jsp?category=1">운동화</a></li>
    <li><a href="view.jsp?category=2">스포츠</a></li>
    <li><a href="view.jsp?category=3">구두</a></li>
    <li><a href="view.jsp?category=4">샌들</a></li>
    <li><a href="view.jsp?category=5">부츠</a></li>
  </ul>
</nav>
