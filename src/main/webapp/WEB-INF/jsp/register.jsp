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


		<c:choose>
			<c:when test = "${accessedNormal == true}">
				<div class="container text-center">
					<h2>Complete de registration process</h2>
					<hr>
				</div>

				<div class="container">

					<form:form class="form-horizontal" role="form"  id="addUserDetails" method="post" action="/registeruser">
						<input type="hidden" name="username"  value="${newUser}" />
						<!-- Field Start -->
						<div class="row">
							<div class="col-sm-4 field-label-responsive text-right">
								<label for="email"></label>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<div class="input-group-addon" style="width: 10%">
											<div style="width: 25px;">
												<i class="fa fa-envelope-o" aria-hidden="true"></i>
											</div>
										</div>
										<input type="text" name="email" class="form-control" id="email"
											   placeholder="Your Email" required autofocus>
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
						<!-- Field Start -->
						<div class="row">
							<div class="col-sm-4 field-label-responsive text-right">
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<div class="input-group-addon" style="width: 10%">
											<div style="width: 25px;">
												<i class="fa fa-key" aria-hidden="true"></i>
											</div>
										</div>
										<input type="password" name="password" class="form-control" id="paw"
											   placeholder="Password"  onkeyup="checkPassStrenght()" onfocus="showValidation()" onblur="hideValidation()" required autofocus>
									</div>
								</div>
							</div>
							<div class="col-sm-4">

							</div>
						</div>
						<!-- Field End -->
						<!-- Field Start -->
						<div class="row">
							<div class="col-sm-4 field-label-responsive text-right">
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<div class="input-group-addon" style="width: 10%">
											<div style="width: 25px;">
												<i class="fa fa-key" aria-hidden="true"></i>
											</div>
										</div>
										<input type="password" name="passwordr" class="form-control"  id="pawCheck"
											   placeholder="Repeat Password" onkeyup="checkPassStrenght()" onfocus="showValidation()" onblur="hideValidation()" required autofocus>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="aro-pswd_info">
									<div id="pswd_info">
										<h4>Password must be requirements</h4>
										<ul>
											<li id="letter" class="invalid">At least <strong>one letter</strong></li>
											<li id="capital" class="invalid">At least <strong>one capital letter</strong></li>
											<li id="number" class="invalid">At least <strong>one number</strong></li>
											<li id="length" class="invalid">Be at least <strong>8 characters</strong></li>
											<li id="space" class="invalid">be<strong> use [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
											<li id="passmatch" class="invalid">Match<strong> the password</strong></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- Field End -->

						<script src="${pageContext.request.contextPath}/static/js/passStrenght.js"></script>

						<br />
						<div class="row" >
							<div class="col-sm-4"></div>
							<div class="col-sm-4" style="margin-left: -90px;">
								<button type="submit" class="btn btn-success" style="margin-left:70px;">
									<i class="fa fa-plus-square" aria-hidden="true"></i> Register
								</button>
							</div>
						</div>
					</form:form>

				</div>
			</c:when>


			<c:otherwise>
				<div class="container text-center">
					<div class="alert alert-danger" role="alert">
						<h2><strong>Error!</strong> You have to enter the user first.</h2>
					</div>
					<a class="btn btn-primary" href="/" role="button">Back To First Step</a>
				</div>
			</c:otherwise>

		</c:choose>


		</div>
		<!-- ENd main -->
	</div>
	<!-- end COntainer -->
	<jsp:include page="footer.jsp" />
</body>
</html>