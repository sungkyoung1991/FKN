<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:if test="${ indexList == null }">
 	<jsp:forward page="/main/index"/>
</c:if> --%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src = "https://cdn.socket.io/socket.io-1.3.7.js"></script>

<title>김성경은 개발자다.</title>

<style>

</style>


<script type="text/javascript">



var socket = io('127.0.0.1:3000');


socket.on('connect',function(){
		  console.log('서버와 연결');
		  
});
	
socket.on('message',function(msg){
	  document.write('<li>');
	  document.writeln(msg);
	  document.writeln('</li>')
	});

	
</script>

</head>

<div>
	<h1>여기는 자바</h1>
</div>


<body>

</body>
</html>