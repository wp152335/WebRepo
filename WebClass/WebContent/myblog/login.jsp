<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  	<link rel="stylesheet" href="/WebClass/css/myblog.css">
  	<title>login</title>
  </head>
  <body>
  
<%@ include file="menu.jsp" %>
<div class ="container">  
   <form class="form-inline my-2 my-lg-0" action="/WebClass/bloglogin" method="post" id="loginForm">
     <input class="form-control mr-sm-2" type="text" placeholder="Id" aria-label="ID" id ="id" name="id" 
     <% if(request.getParameter("id") != null) { %> value="<%=request.getParameter("id")%>" <% } %> required>
     <br>
     <input class="form-control mr-sm-2" type="password" placeholder="Password" aria-label="PWD" id ="pwd" name="pwd"
     <% if(request.getParameter("pwd") != null) { %> value="<%=request.getParameter("pwd")%>" <% } %> required>
     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
    </div>
   <!-- Modal -->
<%@ include file="modal.jsp" %>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<script>
<% if("error".equals(request.getAttribute("msg"))) { %>
	var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
<% } %>
</script>
</body>
</html>