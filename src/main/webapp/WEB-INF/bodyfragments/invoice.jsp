<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>


<style>
body {
	background-image: url('/Airlineticket/resources/images/invoice.jpg');
	background-repeat: no-repeat;
	background-position: center top;
	background-size: cover;
	height: 100%;
}

.card {
	width: 800px;
	background-color: #e6f2ff;
	opacity: 0.8;
	color: black;
	opacity: 0.8;
}
</style>


<div col-md-5img-thumbnail">
<div id="feedback">
	<div class="container">
		<div class="col-md-9">

			<div class="form-area">
			
				<sf:form method="post"
					action="${pageContext.request.contextPath}/ctl/invoice"
					modelAttribute="form">
					<br style="clear: both">
					<h4 style="margin-bottom: 15px; text-align: left:;">Invoice</h4>
					<b><%@ include file="businessMessage.jsp"%></b>
					<hr>
					<sf:hidden path="id" />
					<sf:hidden path="flightNo" />
					<sf:hidden path="flightName" />
					<sf:hidden path="arrivalDate" />
					<sf:hidden path="departureDate" />
					<sf:hidden path="arrivalCity" />
					<sf:hidden path="departureCity" />
					<sf:hidden path="price" />

					<div class="card" column-gap="40px;">
						<div class="card-header">Flight Detail</div>
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-sm">
										<h4>Flight No:</h4>
										<span>${dto.flightNo}</span>
									</div>
									<div class="col-sm">
										<h4>Flight Name</h4>
										<span>${dto.flightName}</span>
									</div>
								</div>

								<div class="row">
									<div class="col-sm">
										<h4>Departure Date</h4>
										<span>${dto.departureDate}</span>
									</div>
									<div class="col-sm">
										<h4>Arrival Date</h4>
										<span> ${dto.arrivalDate}</span>
									</div>


								</div>
								<div class="row">
									<div class="col-sm">
										<h4>Departure City</h4>
										<span> ${dto.departureCity}</span>
									</div>
									<div class="col-sm">
										<h4>Arrival City</h4>
										<span>${dto.arrivalCity}</span>
									</div>
								</div>
								<div class="row">
									<div class="col-sm">
										<h4>Ticket Price:</h4>
										<span>${dto.price}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="form-group">
						<s:bind path="nop">
							<label>Number of Person</label>
							<sf:input path="${status.expression}" placeholder="Number of Person"
								class="form-control" />
							<font color="red" style="font-size: 13px"><sf:errors
									path="${status.expression}" /></font>
						</s:bind>
					</div>



					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Submit">
					<!-- &emsp;
					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Reset"> -->
				</sf:form>
			</div>
		</div>
	</div>
</div>
<!--feedback--> <br>