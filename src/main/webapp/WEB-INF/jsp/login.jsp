<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<jsp:include page="header.jsp" />

<body>
<div id="maincontainer">
	<div id="mainContent">

		<div class="container text-center" >
			<h2>Enter your password to log in</h2>
			<hr>
			<div class="container" style="width: 50%">
<c:if test="${param.error != null}">
	<div class="alert alert-danger" role="alert">
		<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>Invalid Password
	</div>
</c:if>

<c:if test="${param.logout != null}">
	<div class="alert alert-success" role="alert">
		<i class="fa fa-sign-out" aria-hidden="true"></i> You
		successfully loged out!
	</div>
</c:if>
			</div>

<div class="container">

	<form:form id="loginform" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/signin" method="POST">
		<input type="hidden" name="username"  value="${currentUser}" />
		<!-- Field Start -->
		<div class="row">
			<div class="col-sm-4 field-label-responsive text-right">
				<label for="passId"></label>
			</div>
			<div class="col-sm-4">
				<div class="form-group">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<div class="input-group-addon" style="width: 10%">
							<div style="width: 25px;">
								<i class="fa fa-key" aria-hidden="true"></i>
							</div>
						</div>
						<input type="password" name="password" class="form-control" id="passId"
							   placeholder="Password" required autofocus>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="form-control-feedback">
								<span class="text-danger align-middle"> <!-- Put name validation error messages here -->
								</span>
				</div>
			</div>
		</div>
		<!-- Field End -->
		<!-- Field End -->
		<br />
		<div class="row" >
			<div class="col-sm-4"></div>
			<div class="col-sm-4" style="margin-left: -90px;">
				<button type="submit" class="btn btn-success" style="margin-left:-120px;">
					<i class="fa fa-sign-in" aria-hidden="true"></i> Log In
				</button>
			</div>
		</div>
	</form:form>

</div>


		</div>
	</div>
</body>
</html>