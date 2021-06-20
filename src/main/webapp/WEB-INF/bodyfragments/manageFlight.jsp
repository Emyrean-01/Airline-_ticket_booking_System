<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url('/Airlineticket/resources/images/manage.png');
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
						action="${pageContext.request.contextPath}/ctl/manage"
						modelAttribute="form">
						<br style="clear: both">
						<h3 style="margin-bottom: 15px; text-align: left:;">Manage
							Flight</h3>
						<b><%@ include file="businessMessage.jsp"%></b>
						<hr>
						<sf:hidden path="id" />


						<div class="form-row">
							<div class="form-group col-md-6">
								<s:bind path="departureAirportId">
									<label>Departure Airport Name</label>
									<sf:select class="form-control" path="${status.expression}">
										<sf:option value="-1" label="Select" />
										<sf:options itemLabel="name" itemValue="id"
											items="${airportList}" />
									</sf:select>
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-group col-md-6">
								<s:bind path="arrivalAirportId">
									<label>Arrival Airport Name</label>
									<sf:select class="form-control" path="${status.expression}">
										<sf:option value="-1" label="Select" />
										<sf:options itemLabel="name" itemValue="id"
											items="${airportList}" />
									</sf:select>
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

						</div>

						<div class="form-group">
							<s:bind path="flightId">
								<label>Flight Name</label>
								<sf:select class="form-control" path="${status.expression}">
									<sf:option value="-1" label="Select" />
									<sf:options itemLabel="name" itemValue="id"
										items="${flightList}" />
								</sf:select>
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<s:bind path="departureCity">
									<label>Departure City</label>
									<sf:input path="${status.expression}"
										placeholder="Enter Departure City" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-group col-md-6">
								<s:bind path="arrivalCity">
									<label>Arrival City</label>
									<sf:input path="${status.expression}"
										placeholder="Enter Arrival City" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<s:bind path="departureDate">
									<label>Departure Date</label>
									<sf:input path="${status.expression}" placeholder="DD/MM/YYYY" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

							<div class="form-group col-md-6">
								<s:bind path="arrivalDate">
									<label>Arrival Date</label>
									<sf:input path="${status.expression}" placeholder="DD/MM/YYYY" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<s:bind path="departureTime">
									<label>Departure Time</label>
									<sf:input type="time" path="${status.expression}"
										placeholder="00:00:00" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-group col-md-6">
								<s:bind path="arrivalTime">
									<label>Arrival Time</label>
									<sf:input type="time" path="${status.expression}"
										placeholder="00:00:00" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>

						</div>


						<div class="form-group">
							<s:bind path="price">
								<label>Ticket Price</label>
								<sf:input path="${status.expression}"
									placeholder="Enter Ticket Price" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>


						<input type="submit" name="operation"
							class="btn btn-primary pull-right" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="submit" name="operation" class="btn btn-primary pull-right"
							value="Reset">
					</sf:form>
				</div>
			</div>
		</div>
	</div>
	<!--feedback--> <br>
</body>
</html>




