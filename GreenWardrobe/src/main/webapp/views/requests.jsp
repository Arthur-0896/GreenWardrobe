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
					<td class="bg-success text-white text-center">Images</td>
					<td class="bg-success text-white text-center">Status</td>
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
					<td class="text-center"><img class="img-thumbnail rounded"
						src="http://127.0.0.1:8081/<%=garment.getFrontImagePath()%>"
						alt="clothing_image" width="150px" height="200px" />&nbsp; <img
						class="img-thumbnail rounded"
						src="http://127.0.0.1:8081/<%=garment.getBackImagepath()%>"
						alt="clothing_image" width="150px" height="200px" /></td>
					<td
						class="text-center <%=garment.getStatus().equals("Approved") ? "text-success" : "text-primary"%>">
						<b><%=garment.getStatus()%></b>&nbsp; <i
						class="fa <%=garment.getStatus().equals("Approved") ? "fa-check-circle" : "fa-hourglass-start"%>"></i>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%@include file="layouts/footer.jsp"%>