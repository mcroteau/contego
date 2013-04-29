<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.lang.String" %>
<html>
<head>
	<%@include file="/jsp/common/head.jsp" %>
    <sitemesh:write property='head'/>
</head>
<body>
	<div class="container">
		
		<div class="row">
			<div class="span12">
				<%@include file="/jsp/common/navigation.jsp" %>
			</div>
		</div>

		
		<sec:authorize access="isAuthenticated()">
			<div class="row">
				<div class="span12">
					<a href="/contego/j_spring_security_logout">Logout</a>
				</div>
			</div>
		</sec:authorize>
		
		<sec:authorize access="isAnonymous()">
			<div class="row">
				<div class="span12">
					<a href="/contego/app/auth/login">Login</a> &nbsp;|&nbsp;
					<a href="/contego/app/user/registration">Register</a>
				</div>
			</div>
		</sec:authorize>
		
			
		<sitemesh:write property='body'></sitemesh:write>
	
	</div>
	
</body>
</html>