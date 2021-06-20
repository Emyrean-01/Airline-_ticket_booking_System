<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url('/Airlineticket/resources/images/addFlight5.jpg');
	background-size: cover;
	height: 100%;
}
</style>
</head>
<body>
	<divcol-md-5img-thumbnail">
		<div id="feedback">
			<div class="container">
				<div class="col-md-5">
					<div class="form-area">
						<sf:form method="post"
							action="${pageContext.request.contextPath}/ctl/flight"
							modelAttribute="form">
							<br style="clear: both">
							<h3 style="margin-bottom: 15px; text-align: left:;">Add
								Flight</h3>
							<b><%@ include file="businessMessage.jsp"%></b>
							<hr>

							<sf:hidden path="id" />

							<div class="form-group">
								<s:bind path="flightNo">
									<label>Flight Number</label>
									<sf:input path="${status.expression}"
										placeholder="Enter Flight No" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-group">
								<s:bind path="name">
									<label>Flight Name</label>
									<sf:input path="${status.expression}"
										placeholder="Enter Flight Name" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<div class="form-group">
								<s:bind path="PNR">
									<label>PNR Number</label>
									<sf:input path="${status.expression}"
										placeholder="Enter PNR Number" class="form-control" />
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
		<br> <br> <br> <br>
</body>
</html>

