<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>


<c:url var="addSearch" value="/ctl/invoice/search" />

<c:url var="editUrl" value="/ctl/flight?id=" />
<br>
	
	<style>
 
 body{
	background-image: url('/Airlineticket/resources/images/list5.jpeg');
	 background-repeat: no-repeat;

  background-position: center top;	
	background-size: cover; 
	height: 100%;
 }
 
  form{
 	
 	color: black;
 	 
 }

 </style>
	
<div class="col-md-5">
    <div class="form-area"> 
<h4>Invoice List</h4>
</div>
</div>
<b><%@ include file="businessMessage.jsp"%></b>
<hr>
<sf:form action="${addSearch}" method="post" modelAttribute="form">

	<div class="container">
		<div class="row row-cols-4">
		
		<div class="col">
				<s:bind path="invoiceNo">
					<div class="input-group">
						<sf:input path="invoiceNo" type="text"
							placeholder="Invoice No" class="form-control" />
					</div>
				</s:bind>
			</div>
		
			<div class="col">
				<s:bind path="flightNo">
					<div class="input-group">
						<sf:input path="flightNo" type="text"
							placeholder="Flight No" class="form-control" />
					</div>
				</s:bind>
			</div>
			<div class="col">
			<s:bind path="userName">
					<div class="input-group">
						<sf:input path="userName" type="text"
							placeholder="User Name" class="form-control" />
					</div>
				</s:bind>
			</div>
			
			<%-- <div class="col">
				<s:bind path="city">
					<div class="input-group">
						<sf:input path="City" type="text" placeholder="city"
							class="form-control" />
					</div>
				</s:bind>
			</div> --%>
			<div class="col">
				<div class="input-group">

					<input type="submit" name="operation" class="btn btn-md btn-info"
						value="Search">&nbsp;&nbsp; <input type="submit" name="operation"
						class="btn btn-md btn-info" value="Reset">
				</div>
			</div>
		</div>
	</div>

	<br>
	
			<sf:input type="hidden" path="pageNo" />
					<sf:input type="hidden" path="pageSize" />

					<sf:input type="hidden" path="listsize" />
					<sf:input type="hidden" path="total" />
					<sf:input type="hidden" path="pagenosize" />
	
	<table 
		class="table table-striped table-bordered table-sm" 
		width="99%">
		<thead>
			<tr>
			<th class="th-sm">Select to Cancel
			<br>Booking</th>
				<th class="th-sm">Invoice No.</th>
				<th class="th-sm">Flight No.</th>
				<th class="th-sm">Flight Name</th>
				<th class="th-sm">Departure City</th>
				<th class="th-sm">Arrival City</th>
				<th class="th-sm">Departure Date</th>
				<th class="th-sm">Arrival Date</th>
				<th class="th-sm">User Name</th>
				<th class="th-sm">No Of Person</th>
				<th class="th-sm">Price</th>
				<th class="th-sm">Total Amount</th>
				
				
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="in" varStatus="fl">
			<tr>
				<td><input type="checkbox" class="case"
						name="ids" value="${in.id}"></td>
				<td><c:out value="${in.invoiceNo}"/></td>
				<td><c:out value="${in.flightNo}"/></td>
				<td><c:out value="${in.flightName}"/></td>
				<td><c:out value="${in.departureCity}"/></td>
				<td><c:out value="${in.arrivalCity}"/></td>
				<td><c:out value="${in.departureDate}"/></td>
				<td><c:out value="${in.arrivalDate}"/></td>
				<td><c:out value="${in.userName}"/></td>
				<td><c:out value="${in.nop}"/></td>
				<td><c:out value="${in.price}"/></td>
				<td><c:out value="${in.totalAmount}"/></td>
				
			</tr>
	</c:forEach>

		</tbody>
	</table>
	<div style="margin: 10px" class="row row-cols-4">
		<div style="margin-left: 13em" class="col">
			<div class="input-group">
				<input type="submit" name="operation" <c:if test="${form.pageNo == 1}">disabled="disabled"</c:if>
								class="btn btn-primary" value="Previous">
			</div>
		</div>
		
		<div class="col">
			<div class="input-group">
        <input type="submit" name="operation" <c:if test="${listsize== 0}">disabled="disabled"</c:if>
								class="btn btn-primary" value="Cancel Booking"	>
			</div>
		</div>
		
		
		<div class="col" >
			<div class="input-group">

				&emsp;&emsp;&emsp;<input type="submit" name="operation" <c:if test="${total == pagenosize  || listsize < pageSize   }">disabled="disabled"</c:if>
								class="btn btn-primary" value="Next">
			</div>
		</div>
	</div>
	<br>
</sf:form>