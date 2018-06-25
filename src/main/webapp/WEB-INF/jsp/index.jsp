
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" >
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> 
	<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
<%-- 	<script src="<c:url value="/resources/js/controller.js" />"></script> --%>
 	<c:url value="/js/controller.js" var="jstlJs" />
	<script src="${jstlJs}" type="text/javascript"></script>

</head>
<body ng-app="app">

	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spring Boot</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="starter-template">
			<h1>Spring Boot Web JSP</h1>
			<h2>Message: ${message}</h2>
		</div>
	</div>
	
	
	<div ng-controller="postcontroller">
		<form name="customerForm" ng-submit="submitForm()">
			<input type="hidden" name="id" ng-value="data.id"/>
	        First Name:<input type="text" name="firstname" ng-value="data.firstname" class="form-control" ng-model="firstname"/>
	        Last Name:<input type="text" name="lastname" ng-value="data.lastname" class="form-control" ng-model="lastname"/>
	        Percentage:<input type="text" name="percentage" ng-value="data.percentage" class="form-control" ng-model="percentage"/>
	        <button type="submit" ng-hide="editMode" class="btn btn-primary">Save</button>
	        <button type="submit" ng-show="editMode" class="btn btn-primary">Update</button>
		</form>
		<p>{{postResultMessage}}</p>
	
		<button id="btn-id" ng-click="getAllstudent()">Get All Students</button>
	<div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Users </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>PERCENTAGE</th>
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="cust in response">
                        <td>{{cust.id}}</td>
                        <td>{{cust.firstname}}</td>
                        <td>{{cust.lastname}}</td>
                        <td>{{cust.percentage+"%"}}</td>
                        <td><button type="button" ng-click="getStudentById(cust.id)" class="btn btn-success custom-width">Edit</button></td>
                        <td><button type="button" ng-click="removeStudent(cust.id)" class="btn btn-danger custom-width">Remove</button></td>
                    </tr>
                    </tbody>
                </table>      
            </div>
        </div>
    </div>
	</div><!-- closing controller -->
	
	
	<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="webjars/angularjs/1.6.2/angular.min.js"></script>

	
</body>

</html>