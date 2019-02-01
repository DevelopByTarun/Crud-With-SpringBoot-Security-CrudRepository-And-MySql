<%@ include file="taglib.jsp"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="links.jsp"%>
<title>Index.Jsp</title>
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" id="fonty" href="#">Hello&nbsp;${pageContext.request.userPrincipal.name}</a>
	</div>
<ul class="nav navbar-nav">
  <li class="active">
  	<c:url var="homeUrl" value="/"/>
    <a href="${homeUrl}">Home</a>
  </li> 
  <li>
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
			<br/><br/>
			<h1 class="myidx">
				Welcome To My Jpa Crud With Crud Repository And Also Some Interesting Features
			</h1>
			<br/><br/>
			<section>
			<ul class="myListType">
			<li>
			<h3 class="notice notice-danger">
				Spring Boot Module With Auto Configuration
			</h3>
			</li>
			<br/>
			<li>
			<h3 class="notice notice-warning">
				Spring Mvc Module With Interceptors And ExceptionHandling Features
			</h3>
			</li>
			<br/>
			<li>
			<h3 class="notice notice-info">
				Spring Aop Module With Pointcut Feature, After And Before Advices
			</h3>
			</li>
			<br/>
			<li>
			<h3 class="notice notice-dark">
				Spring Security Module With Login Logout Feature And Method Level Security
			</h3>
			</li>
			<br/>
			<li>
			<h3 class="notice notice-primary">
				Spring Orm Module With Jpa And Crud Repository Feature
			</h3>
			</li>
			<br/>
			<li>
			<h3 class="notice notice-success">
				Some Additional Feature Logging With Log4j
			</h3>
			</li>
			</ul>
			</section>
			<br/>
		</div>
	</div>
</div>
</body>
</html>