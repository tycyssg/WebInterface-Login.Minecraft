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
			<jsp:include page="menu.jsp" />

			<div class="container content-center"
				style="width: 100%; height: 100%;">
				<div class="row">
					<script src="${pageContext.request.contextPath}/static/js/cpanelmenu.js"></script>
					<div class="col-md-9 col-md-push-3  well admin-content" id="home"
						style="width: 70%;">
						<p>Hello! This is a forked snippet. It is for users, which use
							one-page layouts.It is for users, which use one-page lIt is for
							users, which use one-page lIt is for users, which use one-page l
						</p>
					</div>
					<div class="col-md-9 col-md-push-3  admin-content" id="settings" style="width: 70%;">
					
						<div class="container">
					
					 <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1primary" data-toggle="tab">Dashboard</a></li>
                            <li><a href="#tab2primary" data-toggle="tab">Edit PersonalDetails</a></li>
                            <li><a href="#tab3primary" data-toggle="tab">Change your password</a></li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">More <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#tab4primary" data-toggle="tab">Primary 4</a></li>
                                    <li><a href="#tab5primary" data-toggle="tab">Primary 5</a></li>
                                </ul>
                            </li>
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">Primary 1</div>
                        <div class="tab-pane fade" id="tab2primary"><!-- Tab2start-->
                        <%-- <jsp:include page="addpersonaldetails.jsp" /> --%>
                        <!-- Personal code in -->
                        		 <div class="container text-center" style="width:80%;"> 
										<h3>Add your personal details.</h3>
										<hr>
										<div id="formSuccessDiv"></div>
					<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/editUserDetails.js"></script>
					<form:form class="form-horizontal" role="form"  id="addUserDetails" onsubmit="addUserDetails(); return false;" >
					<input type="hidden" name="user" value="${userLogat}" />
					<!-- Field Start -->
					<div class="row">
						<div class="col-sm-4 field-label-responsive text-right">
							<label for="nameId">Name</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-address-card-o" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="name" class="form-control" id="nameId"
										placeholder="<c:out value="${name != null ? name : 'Your Name: '}" />" required autofocus>
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
							<label for="surnameId">Surname</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-address-card-o" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="surname" class="form-control"
										id="surnameId" placeholder="<c:out value="${surname != null ? surname : 'Your Surname: '}" />" required autofocus>
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
							<label for="phoneId">Phone</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-phone-square" aria-hidden="true"></i>
										</div>
									</div>
									<input type="number" name="phone" class="form-control"
										id="phoneId" placeholder="<c:out value="${phone != null ? phone : 'Your Phone: '}" />" required autofocus min="0" step="1">
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
					<br />
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4" style="margin-left: -90px;">
							<button type="submit" class="btn btn-success">
								<i class="fa fa-plus-square" aria-hidden="true"></i> Add details
							</button>
						</div>
					</div>
				</form:form>	
				<br /><!-- END details form -->	
				
				
				<!-- Personal address code in -->
										<h3>Add your address</h3>
										<hr>
										<div id="formSuccessDivAdd"></div>
										
					<form:form class="form-horizontal" role="form"  id="addUserAddress" onsubmit="addUserAddress(); return false;" >
					<input type="hidden" name="user" value="${userLogat}" />
					<!-- Field Start -->
					<div class="row">
						<div class="col-sm-4 field-label-responsive text-right">
							<label for="line1">Line1</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-street-view" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="line1" class="form-control" id="line1"
										placeholder="<c:out value="${line1 != null ? line1 : 'Your Address Line 1: '}" />" required autofocus>
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
							<label for="line2">Line 2</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-street-view" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="line2" class="form-control"
										id="line2" placeholder="${line2 != null ? line2 : 'Your Address Line 2: '}" required autofocus>
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
							<label for="line2">House No/Name</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-home" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="houseno" class="form-control"
										id="houseno" placeholder="${house != null ? house : 'Your Address House No: '}" required autofocus>
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
							<label for="city">City</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-building" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="city" class="form-control"
										id="city" placeholder="${city != null ? city : 'Your Address City: '}" required autofocus>
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
							<label for="city">State/County</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-flag-o" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="county" class="form-control"
										id="county" placeholder="${county != null ? county : 'Your County: '}" required autofocus>
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
							<label for="city">Postcode</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-product-hunt" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="postcode" class="form-control"
										id="postcode" placeholder="${postcode != null ? postcode : 'Your Postcode: '}" required autofocus>
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
							<label for="countryid">Country</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
										<i class="fa fa-flag" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="country" class="form-control"
										id="countryid" placeholder="${country != null ? country : 'Your Country: '}" required autofocus>
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
					
					<br />
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4" style="margin-left: -90px;">
							<button type="submit" class="btn btn-success">
								<i class="fa fa-plus-square" aria-hidden="true"></i> Add address details
							</button>
						</div>
					</div>
				</form:form>	
				<br />	
					<div class="alert alert-info" role="alert">
  				<strong>Info!</strong> Fill the specific form again if the details has to be change.
				</div><!-- END details form -->
				<!-- Personal address code out -->
				</div>
                        <!-- personal details code out -->
                        
                        
                        </div><!-- Tab2end -->
                        <div class="tab-pane fade" id="tab3primary">Primary 3</div>
                        <div class="tab-pane fade" id="tab4primary">Primary 4</div>
                        <div class="tab-pane fade" id="tab5primary">Primary 5</div>
                    </div>
                </div>
            </div>

						</div>
					</div>
					<!-- End settings -->
					
					
					<div class="col-md-9 col-md-push-3  well admin-content" id="editp"
						style="width: 70%;">
						<p>Hello! This is a forked snippet. edit panel</p>
						<p>
							Here's the original one from BhaumikPatel: <a
								href="http://bootsnipp.com/snippets/featured/vertical-admin-menu"
								target="_BLANK">Vertical Admin Menu</a> <br> Thank you
							Baumik!
						</p>
					</div>

					<div class="col-md-9 col-md-push-3  well admin-content" id="invite" style="width: 70%;"><!-- Start invite tab -->

					    <div class="container text-center" style="width:80%;"> 
										<h3>Invite someone to join your team.</h3>
										<hr>
							<c:if test="${mailSent eq true}">
						<div class="alert alert-success" role="alert">
							<i class="fa fa-check" aria-hidden="true"></i>
							<strong>Success!</strong> An invitation email was sent!
						</div>
						</c:if>
							<c:if test="${mailInvalid eq true}">
						<div class="alert alert-danger" role="alert">
							<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
							<strong>Warning!</strong> The email address is not valid!
						</div>
					</c:if>
						
						<form:form class="form-horizontal" role="form"  id="inviteSomeoneId" action="invitesomeone" method="POST" >
					<input type="hidden" name="username" value="${userLogat}" />
					<!-- Field Start -->
					<div class="row">
						<div class="col-sm-4 field-label-responsive text-right">
							<label for="emailInviteId">Next member email</label>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 10%">
										<div style="width: 25px;">
											<i class="fa fa-envelope" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" name="emailInvite" class="form-control" id="emailInviteId"
										placeholder="Email" required autofocus>
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
					<br />
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4" style="margin-left: -90px;">
							<button type="submit" class="btn btn-success">
								<i class="fa fa-plus-square" aria-hidden="true"></i> Invite member
							</button>
						</div>
					</div>
				</form:form>	
				</div>		
						
					</div><!-- End invite tab -->
					
					
					<div class="col-md-3 col-md-pull-9 pull-right"
						style="width: 15%; margin-right: 7%;">
						<ul class="nav nav-pills nav-stacked admin-menu">
							<li class="${classCp}"><a href="#" data-target-id="home"><i class="fa fa-home fa-fw"></i>Home</a></li>
							<li><a href="#" data-target-id="settings"><i class="fa fa-cogs fa-fw"></i>Settings</a></li>
							<li><a href="#" data-target-id="editp"><i class="fa fa-list-alt fa-fw"></i>Edit Profile</a></li>
							<li class="${classInv}"><a href="#" data-target-id="invite"><i class="fa fa-file-o fa-fw"></i>Invite to your team</a></li>
						</ul>
					</div>
				</div>

			</div>



		</div>
		<!-- ENd main -->
	</div>
	<!-- end COntainer -->
	<jsp:include page="footer.jsp" />

</body>
</html>