<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>javaguides.net</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<%@ page isELIgnored="false"%>
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h3 class="text-center">Quotation Management</h3>
			<hr />

			<input type="button" value="Add Quotation"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" /> <br />
			<br />
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Quotation List</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
                                                    <th abbr=""style="min-width: 130px">Author</th>
							<th>Message</th>
							<th style="min-width: 130px">Action</th>
						</tr>

						<!-- loop over and print our quotations -->
						<c:forEach var="tempQuotation" items="${quotations}">

							<!-- construct an "update" link with quotation id -->
							<c:url var="updateLink" value="/quotation/updateForm">
								<c:param name="quotationId" value="${tempQuotation.id}" />
							</c:url>

							<!-- construct an "delete" link with quotation id -->
							<c:url var="deleteLink" value="/quotation/delete">
								<c:param name="quotationId" value="${tempQuotation.id}" />
							</c:url>

							<tr>
								<td>${tempQuotation.author}</td>
								<td>${tempQuotation.message}</td>
								

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this quotation?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
	<div class="footer">
		<p>Footer</p>
                <h3>Current locale is ${curLocale}</h3>
                <p class="profile-description">${quotation.author}</p>
	</div>
</body>

</html>