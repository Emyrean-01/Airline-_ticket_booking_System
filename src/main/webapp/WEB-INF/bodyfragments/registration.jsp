<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!DOCTYPE html>
<html>
<head>
<style>
body {
	margin-left: auto;
	margin-right: auto;
	background-image: url('/Airlineticket/resources/images/rej.jpg');
	background-size: cover;
	background-position: center top;
	background-repeat: no-repeat;
	height: 150%;
}
</style>
</head>
<body>

	<div col-md-5img-thumbnail">
		<div id="feedback">
			<div class="container">
				<div class="col-md-5">
					<div class="form-area">
						<sf:form method="post"
							action="${pageContext.request.contextPath}/signUp"
							modelAttribute="form">
							<br style="clear: both">
							<h3 style="margin-bottom: 15px; text-align: left:;">Registration</h3>
							<b><%@ include file="businessMessage.jsp"%></b>
							<div class="form-row">
								<div class="form-group col-md-6">
									<s:bind path="firstName">
										<label>First Name</label>
										<sf:input path="${status.expression}"
											placeholder="Enter First Name" class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>
								<div class="form-group col-md-6">
									<s:bind path="lastName">
										<label>Last Name</label>
										<sf:input path="${status.expression}"
											placeholder="Enter Last Name" class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>
							</div>
							<div class="form-group">
								<s:bind path="login">
									<label>Login Id</label>
									<sf:input path="${status.expression}" placeholder="Enter Login"
										class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<s:bind path="password">
										<label for="pwd">Password</label>
										<sf:input type="password" path="${status.expression}"
											placeholder="Enter Password" class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>

								<div class="form-group col-md-6">
									<s:bind path="confirmPassword">
										<label for="pwd">Confirm Password</label>
										<sf:input type="password" path="${status.expression}"
											placeholder="Enter Confirm Password" class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-4">
									<s:bind path="country">
										<label>Country</label>
										<sf:input path="${status.expression}"
											placeholder="Enter Country" class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>

								<div class="form-group col-md-4">
									<s:bind path="state">
										<label>State</label>
										<sf:input path="${status.expression}"
											placeholder="Enter State" class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>
								<div class="form-group col-md-4">
									<s:bind path="city">
										<label>City</label>
										<sf:input path="${status.expression}" placeholder="Enter City"
											class="form-control" />
										<font color="red" style="font-size: 13px"><sf:errors
												path="${status.expression}" /></font>
									</s:bind>
								</div>
							</div>

							<div class="form-group">
								<s:bind path="email">
									<label>Email</label>
									<sf:input path="${status.expression}" placeholder="Enter Email"
										class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<div class="form-group">
								<s:bind path="mobileNo">
									<label>Mobile Number</label>
									<sf:input path="${status.expression}"
										placeholder="Enter Mobile No" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<div class="form-group">
								<s:bind path="dob">
									<label>Date of Birth</label>
									<sf:input path="${status.expression}" eadonly="readonly"
										id="datepicker" placeholder="DD/MM/YYYY" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<div class="form-group">
								<s:bind path="gender">
									<label>Gender:</label>
									<sf:select class="form-control" path="${status.expression}">
										<sf:option value="" label="Select" />
										<sf:options items="${gender}" />
									</sf:select>
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="submit" name="operation"
								class="btn btn-primary pull-right" value="Reset">
						</sf:form>
					</div>
				</div>
			</div>
		</div>
		<!--feedback-->
</body>
</html>




