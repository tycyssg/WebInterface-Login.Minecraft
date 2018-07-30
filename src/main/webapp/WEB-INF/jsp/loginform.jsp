<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="col-md-12">
	<br>

	<form:form class="form" role="form" method="post" action= "${pageContext.request.contextPath}/signin" accept-charset="UTF-8" id="login-nav">
		<div class="form-group">
			<label class="sr-only" for="exampleInputEmail2">Username</label> <input
				type="text" name="username" class="form-control"
				id="exampleInputEmail2" placeholder="Username">
		</div>
		<div class="form-group">
			<label class="sr-only" for="exampleInputPassword2">Password</label> <input
				type="password" name="password" class="form-control"
				id="exampleInputPassword2" placeholder="Password">
			<div class="help-block text-right">
				<a href="">Forget the password ?</a>
			</div>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary btn-block">Sign
				in</button>
		</div>
		<div class="checkbox">
			<label> <input type="checkbox"> keep me logged-in
			</label>
		</div>
	
	</form:form>

<div class="bottom text-center">
	New here ? <a href="login?register=newacc"><b>Join Us</b></a>
</div>
</div>

