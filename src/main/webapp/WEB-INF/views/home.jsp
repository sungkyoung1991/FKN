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

<title>김성경은 개발자다.</title>

<script type="text/javascript">

$(function() {
	
	$(".mainInfo").on("click",function(){
		
		
		var mainInfoName = $(this).text().trim();
		console.log("mainInfoName : " + mainInfoName);
		
		
		var mainInfoFirstName = $(this).text().trim().charAt(0).toUpperCase();
		console.log("mainInfoFirstName : " + mainInfoFirstName);
		
		var mainInfoAthorString = mainInfoName.substring(1,mainInfoName.length);
		console.log("mainInfoAthorString : " + mainInfoAthorString);
		
		self.location = "/" + mainInfoName + "/get" +mainInfoFirstName + mainInfoAthorString + "List";
		
		
	});
	
});




</script>

</head>
<body>


	<%-- <c:forEach var="indexList" items="${indexList}">
		
		<div class="mainInfo">
			<h5><Strong>${indexList.tablesInForKnowledgeNote}</Strong></h5>
		</div>
			
	</c:forEach> --%>
가즈아~

</body>
</html>