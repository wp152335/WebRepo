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
	<title>profile</title>
  </head>
  <body>

 <%@ include file="menu.jsp" %>

<div class ="container">  
      <h1>This is my profile</h1>
<div id="profile">
</div>
<script>
var schname = "�ѱ������й̵�����б�";
var name = "ȫ�¹�";
var age = 18;
var height = "secret";
var weight = 53;

document.getElementById("profile").innerHTML= 
	"<ul><li>�б�: " + schname + "</li>" +
	"<li>�̸�: " + name + "</li>" +
	"<li>����: " + age + "��</li>" +
	"<li>Ű: " + height + "</li>" +
	"<li>������: " + weight + "</li>";
</script>
    </div>
  </body>
</html>