<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<title>register</title>
  </head>
  <body>

 <%@ include file="menu.jsp" %>

<div class ="container">  
	<h1>register form</h1>
	<br>
	<form id="registerForm">
		<div>
			<input type="radio" name="grade" value="gr1" checked>1학년<br>
			<input type="radio" name="grade" value="gr2" >2학년<br>
			<input type="radio" name="grade" value="gr3" >3학년<br>
		</div>
		<br>
		<div>
			<select name="class">
				<option value="cl1">1반</option>
				<option value="cl2">2반</option>
				<option value="cl3">3반</option>
				<option value="cl4">4반</option>
				<option value="cl5">5반</option>
				<option value="cl6">6반</option>
			</select>
		</div>
		<br>
		<div>
			<input name="number" type="text"  placeholder="번호">
		</div>
		<br>
		<div>
			<input name="name" type="text" id="id" placeholder="이름">
		</div>
		<br>
			<input type="submit" value="register">
	</form>
    </div>
    <!-- Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>	
      </div>
    </div>
  </div>
</div>
  
  
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script src="../js/register.js"></script>
  </body>
</html>