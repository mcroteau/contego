<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="navbar navbar-inverse">
	<div class="navbar-inner">
    	<div class="container">
       		<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
         		<span class="icon-bar"></span>
         		<span class="icon-bar"></span>
         		<span class="icon-bar"></span>
       		</a>
       		<a class="brand" href="javascript:">Contego</a>
       		<div class="nav-collapse collapse navbar-inverse-collapse pull-right">
         		<ul class="nav">
           			<li class="${homeActive}"><a href="/contego/">Home</a></li>
           			<li class="${listPropertyActive}"><a href="/contego/app/user/list?offset=0&max=10">List Users</a></li>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
           				<li class="${addPropertyActive}"><a href= "/contego/app/user/create">Add User</a></li>
					</sec:authorize>
         		</ul>
       		</div>
    	</div>
	</div>
</div>