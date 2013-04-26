<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<html>
<head>
	<title>${title}</title>
</head>

<body>

<div class="container">

	<div class="row">
		<div class="span12">
		</div>
	</div>
	
	<div class="row">
		<div class="span12">
			<h1>${title}</h1>
			<h4>Count : ${total}</h4>
			<h4>Results : ${resultsPerPage}</h4>
		</div>
	</div>
	
	<div class="row">
		<div class="span12">

			<div class="btn-toolbar">
				<div class="btn-group">

					<%  int total = Integer.parseInt(request.getAttribute("total").toString());
						int resultsPerPage = Integer.parseInt(request.getAttribute("resultsPerPage").toString());
						int activePage = Integer.parseInt(request.getAttribute("activePage").toString());
						
						int currentPage = 1;
					    for(int m = 0; m < total; m++){ 
							if(m % resultsPerPage == 0){%>
								<%if(activePage == currentPage){%>
									<a href="/contego/app/user/list?offset=<%=m%>&max=<%=resultsPerPage%>&page=<%=currentPage%>" class="btn active"><%=currentPage%></a>
								<%}else{%>
									<a href="/contego/app/user/list?offset=<%=m%>&max=<%=resultsPerPage%>&page=<%=currentPage%>" class="btn"><%=currentPage%></a>
								<%}%>
								
							<%	
								currentPage++;
							}%>
					<%}%>

				</div>
			</div>
			
				
			<table class="table table-condensed table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Username</th>
						<th>First Name</th>
						<th>Last Name</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
						</tr>									
					</c:forEach>
				</tbody>
			</table>
			
		</div>
	</div>
</body>
</html>