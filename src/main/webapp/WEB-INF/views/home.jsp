<html>
<head>

<!-- encoding -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- jquery  -->
<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->

<!-- node server lib -->
<script src="http://127.0.0.1:3000/socket.io/socket.io.js"></script>

<!-- bootstrap 4.1v -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>


<style>

</style>

<script>

/* node socket server init */
var socket = io('http://127.0.0.1:3000');


socket.on('connect',function(){
  console.log('서버와 연결');
});


	
</script>

</head>

<body>

<h1>Socket.IO Sample</h1>

<script>
socket.on('message',function(msg){
	  document.writeln(msg);
	});
</script>


</body>
</html>
