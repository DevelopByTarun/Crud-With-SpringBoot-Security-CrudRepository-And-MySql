<%@ include file="taglib.jsp"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="links.jsp"%>
<title>CustomerExceptionView.Jsp</title>
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
  <li class="active">
  	<c:url var="addUrl" value="/welcome-customer"/>
    <a href="${addUrl}">Add Customer</a>
  </li>
  <li>
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
		<br/><br/><br/>
			<h1 class="view">
				Customer Exception Page
			</h1>
			<br/>
			<h3 class="alert alert-warning">Exception Occured At :: ${exception.date}</h3>
			<br/>
			<h3 class="alert alert-info">Exception Message :: ${exception.message}</h3>
			<br/>
		</div>
	</div> 
</div>
</body>
</html>