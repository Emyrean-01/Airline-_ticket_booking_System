<%@page import="in.co.airlineticket.util.DataUtility"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<style>
body {
	background-image: url('/Airlineticket/resources/images/addFlight2.jpeg');
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	height: 100%;
}
</style>

<div col-md-5img-thumbnail">
<div id="feedback">
	<div class="container">
		<div class="col-md-8">

			<div class="form-area">
				<sf:form method="post"
					action="${pageContext.request.contextPath}/ctl/invoiceDetail"
					modelAttribute="form">
					<br style="clear: both">
					<h3 style="margin-bottom: 15px; text-align: left:;">User Details</h3>
					<b><%@ include file="businessMessage.jsp"%></b>
					<hr>

					<%
						int nop = (int) request.getAttribute("nop");
					%>

					<%
						for (int i = 1; i <= nop; i++) {
					%>
					<div class="form-row">
						<div class="form-group col-md-4">
							<label>Name</label> <input name="name" placeholder="Enter Name"
								class="form-control" required="required" />
						</div>
						<div class="form-group col-md-4">
							<label for="cars">Gender</label> <select name="gender"
								class="form-control" required="required">
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>
						</div>

						<div class="form-group col-md-4">
									<label >Date of Birth</label>
									<input type="text" name="dob"  
									placeholder="DD/MM/YYYY" class="form-control"  required="required"/>

					</div>

					<%
						}
					%>

					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="submit" name="operation" class="btn btn-primary pull-right"
						value="Reset">
				</sf:form>
			</div>
		</div>
	</div>
</div>
<!--feedback--> <br>