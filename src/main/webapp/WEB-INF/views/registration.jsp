<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
    	<div class="row justify-content-center align-items-center" style="margin-top:10em"">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">

					<h2 class="form-heading text-center">REGISTER</h2>
					<hr>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								
								<form:form id="login-form" method="POST" modelAttribute="userForm" class="form-signin" role="form" style="display: block;">
									<spring:bind path="username">
										<div class="form-group ${error != null ? 'has-error' : ''}">
											<span>${message}</span>
											<input type="text" path="username" name="username" id="username" tabindex="1" class="form-control" placeholder="Username">
											<form:errors path="username"></form:errors>
										</div>
									</spring:bind>
									
									<spring:bind path="password">
							            <div class="form-group ${status.error ? 'has-error' : ''}">
							            	<span>${error}</span>
							            	<input type="password" path="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
							                <form:errors path="password"></form:errors>
							            </div>
							        </spring:bind>
							        
							        <spring:bind path="passwordConfirm">
							            <div class="form-group ${status.error ? 'has-error' : ''}">
							            	<span>${error}</span>
							            	<input type="password" path="passwordConfirm" name="passwordConfirm" id="passwordConfirm" tabindex="2" class="form-control" placeholder="Password">
							                <form:errors path="passwordConfirm"></form:errors>
							            </div>
							        </spring:bind>
							     	
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="btn btn-lg btn-primary btn-block" value="Register">
											</div>
											<div class="col-sm-6">
												<a class="btn btn-lg btn-danger btn-block" href="/login" role="button">Cancel</a>
											</div>
										</div>
									</div>						
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="common/footer.jspf"%>