<html>
<head>

<!-- encoding -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- jquery  -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<!-- node server lib -->
<script src="http://127.0.0.1:3000/socket.io/socket.io.js"></script>




<style>


 * { margin: 0; padding: 0; box-sizing: border-box; }
      body { font: 13px Helvetica, Arial; }
      form { background: #000; padding: 3px; position: fixed; bottom: 0; width: 100%; }
      form input { border: 0; padding: 10px; width: 90%; margin-right: .5%; }
      form button { width: 9%; background: rgb(130, 224, 255); border: none; padding: 10px; }
      #messages { list-style-type: none; margin: 0; padding: 0; }
      #messages li { padding: 5px 10px; }
      #messages li:nth-child(odd) { background: #eee; }
      
</style>

<script>

/* node socket server init */
var socket = io('http://127.0.0.1:3000');


socket.on('connect',function(){
  console.log('서버와 연결jsp');
});
  
$(function () {
	var socket = io('http://127.0.0.1:3000');
    $('form').submit(function(){
      socket.emit('chat message', $('#m').val());
      $('#m').val('');
      return false;
    });
    
    socket.on('chat message', function(msg){
      $('#messages').append($('<li>').text(msg));
    });
    
    socket.on('disconnect',function(req,res){// ping timeout error check..
    	
    	console.log('req : ' ,req);
    	console.log('res : ' ,res);
    	
    	$('#messages').append($('<li>').text('client 가 나감..'));
    	
    });
    
  });
  
  
  /* socket disconnect emit */
  

</script>

</head>

<body>

<h1>Socket.IO Sample</h1>

 <body>
 
    <ul id="messages"></ul>
    <form action="">
      <input id="m" autocomplete="off" /><button>Send</button>
    </form>
  </body>



</body>
</html>
