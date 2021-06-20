<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

	
	<style>
 
 body{
	background-image: url('/Airlineticket/resources/images/rej1.jpg');
	 background-repeat: no-repeat;
	 background-position: center top;
	 background-size: cover; 
	 height: 30px%;
	 padding-bottom: 20px;
 }

 </style>

<div col-md-5 img-thumbnail">
           <div id="feedback"> <div class="container">
<div class="col-md-5">
    <div class="form-area">  
       <sf:form method="post" action="${pageContext.request.contextPath}/profile"  modelAttribute="form">
        <br style="clear:both">
                    <h3 style="margin-bottom: 15px; text-align: left: ;">My Profile</h3>
                    <hr>
                    <b><%@ include file="businessMessage.jsp"%></b>
                		<div class="form-row">
    							<div class="form-group col-md-6">
								<s:bind path="firstName">
								<label >First Name</label> 
								<sf:input path="${status.expression}" placeholder="Enter First Name" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
        					<div class="form-group col-md-6">
								<s:bind path="lastName">
								<label >Last Name</label> 
								<sf:input path="${status.expression}" placeholder="Enter Last Name" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							</div>
							<div class="form-group">
								<s:bind path="login">
								<label >Login Id</label> 
								<sf:input path="${status.expression}" placeholder="Enter Login" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
							<div class="form-group">
								<s:bind path="email">
								<label >Email</label> 
								<sf:input path="${status.expression}" placeholder="Enter Email" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
							<div class="form-group">
								<s:bind path="mobileNo">
								<label >Mobile Number</label> 
								<sf:input path="${status.expression}" placeholder="Enter Mobile No" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
							<div class="form-group">
								<s:bind path="dob">
								<label >Date of Birth</label> 
								<sf:input path="${status.expression}" id="datepicker" readonly="readonly" placeholder="Enter Date Of birth" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
							<div class="form-group">
								<s:bind path="gender">
								<label >Gender</label> 
								<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="Select" />
									<sf:options   items="${gender}" />
								</sf:select>
								<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
        					 <input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Save">&emsp;<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Reset">
        </sf:form>
    </div>
</div>
</div> </div> <!--feedback-->
<br>

	