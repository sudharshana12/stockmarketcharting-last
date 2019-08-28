<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<head>
<title>User Update Profile</title>
<link rel="Stylesheet" href="/styles/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body>

	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="/images/page-icon.png" width="30" height="30" alt=""> STOCK MARKETING</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/User/user-landing-page">Home <span class="sr-only">(current)</span></a>
                </li>
                &nbsp;&nbsp; &nbsp; &nbsp;
                <li class="nav-item">
                    <a class="nav-link" href="/User/viewIpo">IPOs</a>
                </li>
                &nbsp; &nbsp;&nbsp; &nbsp;
                <li class="nav-item">
                    <a class="nav-link" href="/User/user-compare-company">Compare Company</a>
                </li>
                &nbsp; &nbsp;&nbsp; &nbsp;
                <li class="nav-item">
                        <a class="nav-link" href="/User/user-compare-sectors">Compare Sectors</a>
                 </li>
                 &nbsp; &nbsp;&nbsp; &nbsp;
                 <li class="nav-item">
                        <a class="nav-link" href="/User/user-update-page">Update Profile</a>
                </li>
                
            </ul>
        </div>
        <div>
                <ul class="navbar-nav">
                <li class="nav-item active">
                <a class="nav-link" href="/User/login">Logout</a>
                </li>
                </ul>
        </div>
    </nav>
	<form:form method="POST" action="/User/user-update-page" modelAttribute="user">
		<div>
			<h3 class="text-center" style="margin-top: 20px;">Update Profile</h3>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-id" class="col-sm-2 col-form-label">UserId
					</label>
				<div class="col-sm-3">
					<form:input type="text" path="id" class="form-control"
						id="user-id" placeholder="user-id" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-name" class="col-sm-2 col-form-label">Username
					</label>
				<div class="col-sm-3">
					<form:input type="text" path="username" class="form-control"
						id="user-name" placeholder="username" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-password" class="col-sm-2 col-form-label">
					Password</label>
				<div class="col-sm-3">
					<form:input type="text" path="password" class="form-control"
						id="user-password" placeholder="password" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-email" class="col-sm-2 col-form-label">email </label>
				<div class="col-sm-3">
					<form:input type="text" path="email" class="form-control"
						id="user-email" placeholder="Email" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-mobile" class="col-sm-2 col-form-label">Mobile Number</label>
				<div class="col-sm-3">
					<form:input type="text" path="mobileNumber" class="form-control"
						id="user-mobile" placeholder="Mobilenumber" />
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