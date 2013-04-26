<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>${title}</title>
</head>
<body>
	
	<div class="row">
		<div class="span12">
			<h1>${title} </h1>
		</div>
	</div>
	
	<c:if test="${not empty error}">
		<div class="row">
			<div class="span12">
				<div class="errorblock">
					Your login attempt was not successful, try again.<br /> Caused :
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
				</div>
			</div>
		</div>	
	</c:if>
	
	
	<sec:authorize access="isAnonymous()">
		<div class="row" id="form">
			<div class="span12">
				
				<form  action="/contego/j_spring_security_check" method="post" class="form-horizontal"  >
					<div class="control-group">
						<label class="control-label">Username</label>
						<div class="controls">
							<input type="text" name="j_username" value="" placeholder="username" id="j_username"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Password</label>
						<div class="controls">
							<input type="password" name="j_password" value="" placeholder="****" id="j_password">	
						</div>
					</div>
    	
    	
					<input type="submit" class="btn" id="login" value="Login"/>
				</form>	
			</div>	
		</div>
	</sec:authorize>
	
	


</body>
</html>