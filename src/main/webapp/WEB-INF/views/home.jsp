<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>

<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  
<script src="http://127.0.0.1:3000/socket.io/socket.io.js"></script>

<script type="text/javascript">



/* node socket server init */
 var socket = io('http://127.0.0.1:3000');


/* socket.on('connect',function(){
  console.log('서버와 연결jsp');
}); */

socket.on('connect',function(){
	
	  console.log('서버와 연결jsp');
	  
	});
  
$(function () {
	/*  1.socket  */
	var socket = io('http://127.0.0.1:3000');
	
	/*  2.socket > namespace  */
	/* var socket = io('http://127.0.0.1:3000/namespace'); */
	
	
	
    $('form').submit(function(){
      socket.emit('chat message', $('.chat').val(), $('.nick').text());
      $('.chat').val('');
      return false;
    });
    
    socket.on('chat message', function(msg,name){
      $('#messages').append($('<li>').text(name + ' : ' + msg));
      /* $('#messages').scrollTop($('#messages')[0].scrollHeight); */
      window.scrollTo(0, document.body.scrollHeight);
    });
    
    socket.on('disconnect',function(req,res){// ping timeout error check..
    	$('#messages').append($('<li>').text('client 가 나감..'));
    });
    
    socket.on('change name', function(name){
  	  $('.nick').text(name);
    });
    
    
  });
  
  /* socket disconnect emit */
  
  $(document).ready(function(){
	  
	  
	  $('.chat').focus();
	  
  });
  
  
  

</script>

<style>


 { margin: 0; padding: 0; box-sizing: border-box; }  
       body { font: 13px Helvetica, Arial; } 
       .chatName { background: #000; padding: 3px; position: fixed; bottom: 0; width: 100%; } 
       form input { border: 0; padding: 10px; width: 90%; margin-right: .5%; }
      form button { width: 9%; background: rgb(130, 224, 255); border: none; padding: 10px; }
       #messages { list-style-type: none; margin: 0; padding: 0; }
      #messages li { padding: 5px 10px; }
      #messages li:nth-child(odd) { background: #eee; }
      
      ul {margin-bottom : 200px;}
      
      /* .ib{display:inline-block;}
      
      .l{float:left;}
      .r{float:right;}
      .c{float:center;}
      
      .nick {width:10%; outline:red solid 1px;}
      .chat{width:80%; outline:blue solid 1px;}
      button{width:10%; align:left;}
      
      body input button {margin:0px; padding:0px; border:0px;} */
      
      
      
      </style>

</head>



 
    

<body>

<div class= "section">


		<ul id="messages"></ul>
		    <form action="" class = "formChat">
		    <div id = "nick" class="nick l" ></div>
		    <!-- <div class="r chat"></div> -->
		    <input class="chat r" autocomplete="off" />
		    
		    <button class="r" >Send</button>
		    </form>
</div>
</body>



</html>
