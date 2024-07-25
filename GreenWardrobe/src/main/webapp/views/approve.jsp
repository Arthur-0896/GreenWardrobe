<%@include file="layouts/header.jsp"%>
<title>Approval page</title>
<%@ page import="java.util.List"%>
<%@ page import="com.greenwardrobe.entities.Garment"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page import="jakarta.servlet.http.HttpServletResponse"%>
</head>
<body>
	<div class="container">
		<%@include file="layouts/navbar.jsp"%>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<td class="bg-success text-white text-center">Garment id</td>
					<td class="bg-success text-white text-center">Brand</td>
					<td class="bg-success text-white text-center">Condition</td>
					<td class="bg-success text-white text-center">Item name</td>
					<td class="bg-success text-white text-center">Action</td>
			</thead>
			<tbody>
				<%
				List<Garment> garments = (List<Garment>) request.getAttribute("garments");
				for (Garment garment : garments) {
				%>
				<tr>
					<td class="text-center"><%=garment.getGId()%></td>
					<td class="text-center"><%=garment.getBrand()%></td>
					<td class="text-center"><%=garment.getCondition()%></td>
					<td class="text-center"><%=garment.getName()%></td>
					<td class="text-center">
						<form id="formApprove<%=garment.getGId()%>"
							action="/ApproveProcess/<%=garment.getGId()%>" method="post">
						</form>
						<form id="formReject<%=garment.getGId()%>"
							action="/RejectProcess/<%=garment.getGId()%>" method="post">
						</form> <a href="#"
						onclick="document.getElementById('formApprove<%=garment.getGId()%>').submit();">Approve</a>
						| <a href="#"
						onclick="document.getElementById('formReject<%=garment.getGId()%>').submit();">Reject</a>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%@include file="layouts/footer.jsp"%>