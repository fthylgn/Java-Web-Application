<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>


<div class="container">
    	<div class="row justify-content-center align-items-center" style="margin-top:10em">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">

					<h2 class="form-heading text-center">Log in</h2>
					<hr>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								
								<form id="login-form" method="POST" action="${contextPath}/login" class="form-signin" role="form" style="display: block;">
									
									<div class="form-group ${error != null ? 'has-error' : ''}">
										<span>${message}</span>
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username">
									</div>
									
									<div class="form-group">
										<span>${error}</span>
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="btn btn-lg btn-primary btn-block" value="Log In">
											</div>
											<div class="col-sm-6">
												<a class="btn btn-lg btn-danger btn-block" href="/registration" role="button">Register</a>
											</div>
										</div>
									</div>						
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	



<%@ include file="common/footer.jspf"%>
