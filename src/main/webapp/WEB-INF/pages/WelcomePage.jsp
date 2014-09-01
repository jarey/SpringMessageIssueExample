<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script>
function myFunction(){
	
	var prueba = '<spring:message code="welcome.springmvc" htmlEscape="true" text="default text" />';
	
	alert("Message managed by javascript obtained with spring:message htmlEscape=true :"+prueba);
	
	
}
</script>
<html>
<body onload="myFunction()">
<h1>Spring MVC internationalization example</h1>

Language : 	<a href="?language=es">Spanish</a>|
			<a href="?language=en">English</a>|
			<a href="?language=zh_CN">Chinese</a>

<h3>
	Message shown directly on the jsp using spring:message tag and htmlEscape=true : <spring:message code="welcome.springmvc"  htmlEscape="true" text="default text" />
</h3>


Current Locale : ${pageContext.response.locale}

</body>
</html>