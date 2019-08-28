<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,com.example.stockspring.model.IPOsPlanned"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"
	%>
<!DOCTYPE html>

<head>
<title>Admin Update Ipo</title>
<link rel="Stylesheet" href="/styles/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body>

	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"><img src="/images/page-icon.png"
			width="30" height="30" alt=""> STOCK MARKETING</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/Admin/admin-landing-page">Home <span class="sr-only">(current)</span>
				</a></li> &nbsp; &nbsp; &nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="/Admin/admin-import-data">Import Data</a></li> &nbsp; &nbsp;
				&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link" href="/createcompany">Manage
						Company</a></li> &nbsp; &nbsp; &nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link" href="#">Manage
						Exchange</a></li> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link" href="/cmpList">Company
						List</a></li> &nbsp; &nbsp; &nbsp; &nbsp;
						<li class="nav-item "><a class="nav-link"
					href="/Admin/createIpo">Manage IPOs</a></li> &nbsp; &nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link" href="/Admin/viewIpo">Update
						IPO Details</a></li>

			</ul>
		</div>
		<div>
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="/User/login">Logout</a>
				</li>
			</ul>
		</div>

	</nav>
	<%
		IPOsPlanned ipo = (IPOsPlanned) request.getAttribute("ipo");
	%>
	<form:form method="POST" action="/update-ipo" modelAttribute="ipo">
		<div>
			<h3 class="text-center" style="margin-top: 20px;">Update Ipo</h3>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-id" class="col-sm-2 col-form-label">Ipo Id
				</label>
				<div class="col-sm-3">
					<form:input type="text" path="id" class="form-control" id="user-id"
						value="<%=ipo.getId() %>" readonly="true"/>
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="companycode" class="col-sm-2 col-form-label">CompanyCode
				</label>
				<div class="col-sm-3">
					<form:input type="text" path="companyCode" class="form-control"
						id="companycode" value="<%=ipo.getCompanyCode() %>" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="opendatetime" class="col-sm-2 col-form-label">
					OpenDateTime</label>
				<div class="col-sm-3">
					<form:input type="text" path="openDateTime" class="form-control"
						id="opendatetime" value="<%=ipo.getOpenDateTime() %>" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="pricepershare" class="col-sm-2 col-form-label">Price per Share
				</label>
				<div class="col-sm-3">
					<form:input type="text" path="pricePerShare" class="form-control"
						id="pricepershare" value="<%=ipo.getPricePerShare() %>" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="stockexchange" class="col-sm-2 col-form-label">Stock Exchange
					</label>
				<div class="col-sm-3">
					<form:input type="text" path="StockExchange" class="form-control"
						id="stockexchange" value="<%=ipo.getStockExchange() %>" />
				</div>
			</div>
            <div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="shares" class="col-sm-2 col-form-label">No of Shares
					</label>
				<div class="col-sm-3">
					<form:input type="text" path="totalNumberOfShares" class="form-control"
						id="shares" value="<%=ipo.getTotalNumberOfShares() %>" />
				</div>
			</div>
            <div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="remarks" class="col-sm-2 col-form-label">Remarks
					</label>
				<div class="col-sm-3">
					<form:input type="text" path="remarks" class="form-control"
						id="remarks" value="<%=ipo.getRemarks() %>" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-10" style="margin-left: 900px; margin-top: 70px;">
					<button type="submit" class="btn btn-primary">Save</button>
				</div>
			</div>
		</div>
	</form:form>
	<div class="footer">
		<p class="footer-text">Stock Exchange</p>
	</div>
</body>

</html>