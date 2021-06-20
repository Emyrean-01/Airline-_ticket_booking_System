<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<style>
body {
	background-image: url('/Airlineticket/resources/images/pass.jpg');
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	height: 100%;
}
</style>

<div col-md-5img-thumbnail">
	<div id="feedback">
		<div class="container">
			<div class="col-md-5">
				<div class="form-area">
					<sf:form method="post"
						action="${pageContext.request.contextPath}/changepassword"
						modelAttribute="form">

						<br style="clear: both">
						<h3 style="margin-bottom: 15px; text-align: left:;">Change
							Password</h3>
							<hr>
						<b><%@ include file="businessMessage.jsp"%></b>
						<div class="form-group">
							<s:bind path="oldPassword">
								<label for="pwd">Old Password</label>
								<sf:input type="password" path="${status.expression}"
									placeholder="Enter Old Password" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<s:bind path="newPassword">
									<label for="pwd">New Password</label>
									<sf:input type="password" path="${status.expression}"
										placeholder="Enter New Password" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<div class="form-group col-md-6">
								<s:bind path="confirmPassword">
									<label for="pwd">Confirm New Password</label>
									<sf:input type="password" path="${status.expression}"
										placeholder="Enter Confirm Password" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
						</div>



						<input type="submit" name="operation"
							class="btn btn-primary pull-right" value="Save">

					</sf:form>
					<br> <br> <br> <br> <br> <br>
				</div>
			</div>
		</div>
	</div>
	<!--feedback-->
	<br>