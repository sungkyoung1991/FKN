<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl cdn  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>

<!-- jQuery cdn version : 3.1.1  -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


<!-- script tag  -->
<script type="text/javascript">


</script>


</head>


<body>

전체 회원 수 : ${resultPage.totalCount }

<c:forEach var="user" items="${userList}">
		
		<div class="userList">
			
			
			<div class = "userNo">
				${user.userNo}
			</div>
			
			<div class = "email">
				${user.email}
			</div>
			
			<div class = "password">
				${user.password}
			</div>
			
			<div class = "nickname">
				${user.nickname}
			</div>
			
			<div class = "name">
				${user.name}
			</div>
			
			<div class = "gender">
				${user.gender}
			</div>
			
			<div class = "jumin">
				${user.jumin}
			</div>
			
			<div class = "role">
				${user.role}
			</div>
			
			
			
		</div>
			
	</c:forEach>



</body>
</html>