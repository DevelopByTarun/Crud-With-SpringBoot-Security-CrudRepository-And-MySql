<%@ include file="taglib.jsp"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="links.jsp"%>
<title>Fetch-Customer.Jsp</title>
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" id="fonty" href="#">Hello&nbsp;${pageContext.request.userPrincipal.name}</a>
	</div>
<ul class="nav navbar-nav">
  <li>
  	<c:url var="homeUrl" value="/"/>
    <a href="${homeUrl}">Home</a>
  </li> 
  <li>
  	<c:url var="addUrl" value="/welcome-customer"/>
    <a href="${addUrl}">Add Customer</a>
  </li>
  <li class="active">
  	<c:url var="getUrl" value="/fetch-customers"/>
    <a href="${getUrl}">Fetch Customers</a>
  </li>
</ul>
<ul class="nav navbar-nav navbar-right">
		<li>
			<c:url var="outUrl" value="/logout"/>
			<a href="${outUrl}">Logout</a>
		</li>
	</ul>
</div>
</nav>
<div class="container">
	<div class="row">
		<div class="col-md-12">
		<br/><br/>
			<h1 class="show">Customers List</h1>
<br/>
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Age</th>
      <th>City</th>
      <th>Country</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
  </thead>
  <tbody> 
  <c:forEach var="customer" items="${customersList}">			
	   <tr>
	   <td><c:out value="${customer.id}"/></td>
	   <td><c:out value="${customer.name}"/></td>
	   <td><c:out value="${customer.age}"/></td>
	   <td><c:out value="${customer.city}"/></td>
	   <td><c:out value="${customer.country}"/></td>
       <td>
       <button type="button" class="btn btn-warning btnOne">
       		<c:url var="editUrl" value="/edit-customer/${customer.id}"/>
       		<a href="${editUrl}">Edit</a>
       	</button>
       </td>
       <td>
       <button type="button" class="btn btn-danger btnTwo">
       		<c:url var="deleteUrl" value="/delete-customer/${customer.id}"/>
       		<a href="${deleteUrl}">Delete</a>
       	</button>
       </td>
    </tr>						
</c:forEach>
  </tbody>
</table>
<br/>
		</div>
	</div>
</div>
</body>
</html>