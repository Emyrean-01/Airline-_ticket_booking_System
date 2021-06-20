<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
 <style>
 body{
	background-image: url('/Airlineticket/resources/images/payment2.jpeg');	
	background-size: cover; 
	 background-repeat: no-repeat;
  background-position: center top;
	height: 100%;
 }
</style>
<div col-md-5img-thumbnail">
	<div id="feedback">
		<div class="container">
			<div class="col-md-5">
				<div class="form-area">
					<sf:form method="post"
						action="${pageContext.request.contextPath}/ctl/payment"
						modelAttribute="form" >
						<br style="clear: both">
						<h3 style="margin-bottom: 15px; text-align: left:;">Payment</h3>
						<b><%@ include file="businessMessage.jsp"%></b>
						<hr>
						<sf:hidden path="id" />
						<div class="form-group">
							<label>Card Number</label> <input type="number" name="cardNo"
								placeholder="Enter Card Holder Name" class="form-control" required/>
						</div>
						<div class="form-group">
							<label>Card Holder Name</label> <input name="holderName"
								placeholder="Enter Card Holder Name" class="form-control" required/>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="cars">Month</label>
									<select name="month" class="form-control">
									<option value="">Select</option>
									  <option value="January">January</option>
									  <option value="February">February</option>
									  <option value="March">March</option>
									  <option value="April">April</option>
									  <option value="May">May</option>
									  <option value="June">June</option>
									  <option value="July">July</option>
									  <option value="August">August</option>
									  <option value="September">September</option>
									  <option value="October">October</option>
									  <option value="November">November</option>
									  <option value="December">December</option>
									</select>
							</div>
							<div class="form-group col-md-6">
									<label for="year">Year:</label>
									<select name="year" class="form-control">
									<option value="">Select</option>
									  <option value="2021">2021</option>
									  <option value="2022">2022</option>
									  <option value="2023">2023</option>
									  <option value="2024">2024</option>
									  <option value="2025">2025</option>
									  <option value="2026">2026</option>
									  <option value="2027">2027</option>
									  <option value="2028">2028</option>
									  <option value="2029">2029</option>
									  <option value="2030">2030</option>
									</select>
							</div>
						</div>
						<div class="form-group">
							<label>CVV:</label> <input type="password" name=""
								placeholder="Enter CVV." class="form-control" />
						</div>


						<input type="submit" name="operation"
							class="btn btn-primary pull-right" value="Confirm Payment">&emsp;<input
							type="submit" name="operation" class="btn btn-primary pull-right"
							value="Reset">
					</sf:form>
				</div>
			</div>
		</div>
	</div>
	<!--feedback-->
	<br>