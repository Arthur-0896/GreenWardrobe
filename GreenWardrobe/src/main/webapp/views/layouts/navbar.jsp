<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page import="java.util.List"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<div class="col-12" style="text-align: center;">
	<img src="../images/logos/GW Logo Lina new.jpg" />
</div>
<div class="row">
	<div class="col-2" style="text-align: center;"></div>
	<div class="col-8">
		<header>
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<div class="collapse navbar-collapse justify-content-center"
						id="navbarNavDropdown">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="/home">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Features</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
							</li>
							<%
							String role = "";
							if (request.getSession().getAttribute("role") != null) {
								role = (String) (request.getSession().getAttribute("role"));
							}
							if (!"Admin".equalsIgnoreCase(role) || "".equals(role)) {
							%>
							<li class="nav-item"><a class="nav-link" href="/buy">Buy</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="/Sell">Sell</a>
							</li>
							<%
							}
							%>
							<%
							 if("Customer".equals(role)) {
							%>
							<li class="nav-item"><a class="nav-link text-primary" href="/Requests">My Requests</a>
							</li>
							<% } %>
							<%
							if ("Admin".equalsIgnoreCase(role)) {
							%>
							<li class="nav-item">
								<form id="form1" action="/Approve" method="post">
									<a class="nav-link" href="#"
										onclick="document.getElementById('form1').submit();">Approve</a>
								</form>
							</li>
							<%
							}
							%>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>
	<div class="col-2 mt-3" style="text-align: center;">
		<%
		String userName = (String) (request.getSession().getAttribute("userName"));
		if (userName == null) {
		%>
		<a href="/login" class="text-decoration-none"> <i
			class="fa fa-user-circle" style="font-size: 20px"></i> Log in
		</a>
		<%
		} else {
		%>
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				id="dropdownMenuButton1" data-bs-toggle="dropdown"
				aria-expanded="false">
				<i class="fa fa-user-circle" style="font-size: 20px"></i>
				<%=userName%>
			</button>
			<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
				<li><a class="dropdown-item" href="#">Profile</a></li>
				<li><form id="form2" action="/logout" method="post">
						<a class="dropdown-item" href="#"
							onclick="document.getElementById('form2').submit();">Logout</a>
					</form></li>
			</ul>
		</div>
		<%
		}
		%>
	</div>
</div>