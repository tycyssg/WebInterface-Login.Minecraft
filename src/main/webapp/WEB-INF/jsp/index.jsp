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
				<h2>Enter your username</h2>
				<hr>
				<div class="container" style="width: 50%">
				<c:if test="${emptyUserOrMail eq true}">
					<div class="alert alert-warning" role="alert">
						<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
						<strong>Warning!</strong> You have the fill all inputs during the registration process.
					</div>
				</c:if>

				<c:if test="${specialChars eq true}">
					<div class="alert alert-danger" role="alert">
						<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
						<strong>Error!</strong> Only letters and numbers are allowed!
					</div>
				</c:if>
				<c:if test="${emailExist eq true}">
					<div class="alert alert-danger" role="alert">
						<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
						<strong>Error!</strong> Your email already exist in our records!
					</div>
				</c:if>
				<c:if test="${emailValid eq true}">
					<div class="alert alert-danger" role="alert">
						<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
						<strong>Error!</strong> Your email is invalid!
					</div>
				</c:if>

				<c:if test="${accCreated eq true}">
					<div class="alert alert-warning" role="alert">
						<i class="fa fa-id-card-o" aria-hidden="true"></i> Your
						account was successfully created!
					</div>
				</c:if>
				</div>
			</div>

			<div class="container">

			<form:form class="form-horizontal" role="form"  id="addUserDetails" method="post" action="/checkuser">
				<!-- Field Start -->
				<div class="row">
					<div class="col-sm-4 field-label-responsive text-right">
						<label for="nameId"></label>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<div class="input-group-addon" style="width: 10%">
									<div style="width: 25px;">
										<i class="fa fa-address-card-o" aria-hidden="true"></i>
									</div>
								</div>
								<input type="text" name="username" class="form-control" id="nameId"
									   placeholder="Username" required autofocus>
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
						<button type="submit" class="btn btn-success" style="margin-left:70px;">
							<i class="fa fa-plus-square" aria-hidden="true"></i> Next
						</button>
					</div>
				</div>
			</form:form>

		</div>


		</div>
		<!-- ENd main -->
	</div>
	<!-- end COntainer -->
	<jsp:include page="footer.jsp" />
</body>
</html>