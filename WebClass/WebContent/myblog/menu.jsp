<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/WebClass/myblog/main.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="/WebClass/myblog/profile.jsp">프로필 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="/WebClass/myblog/likes.jsp">좋아하는 것 </a>
      </li>
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="/WebClass/myblog/hobby.jsp">취미</a>
      </li>
    </ul>
			<%
				UserVO user = (UserVO) session.getAttribute("user");
				if (user == null) {
			%>
			<a class="text-bold text-black" style="text-decoration: none"
				href="/WebClass/myblog/login.jsp">Sign in</a>
			<%
				} else {
			%>
			<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				<li class="nav-item dropdown"><a
					class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
					id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <%=user.getName() + "님"%>
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="bd-versions">
						<form action="/WebClass/bloglogout" method="post">
							<button type="submit" class="dropdown-item">Sign out</button>
						</form>
						<div class="dropdown-divider"></div>
						<button type="button" class="dropdown-item">Action1</button>
						<button type="button" class="dropdown-item">Action2</button>
					</div></li>
			</ul>
			<%
				}
			%>
  </div>
</nav>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
