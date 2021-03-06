<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
            <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Quotation Management</title>
        <meta name="description" content="">        
        <link href="http://allfont.ru/allfont.css?fonts=hermes" rel="stylesheet" type="text/css" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='stylesheet' href='<c:url value="/resources/css/normalize.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/font-awesome.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/bootstrap.min.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/templatemo-style.css" />' type='text/css' media='all' />

        <script src='<c:url value="/resources/js/vendor/modernizr-2.6.2.min.js" />'></script>        
        <%@ page isELIgnored="false"%>
        <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    </head>
    <body>
        <%@include file="../jspf/header.jspf" %>
        <%@include file="../jspf/sidebarOuther.jspf" %>
        <%@include file="../jspf/banner.jspf" %>
        <div class="main-content">
            <div class="fluid-container">

                <div class="content-wrapper">
                    <div class="col-md-offset-1 col-md-10">
                        <br/>
                        <h4 class="widget-title"><fmt:message key="label.Quotation.Management" /></h4>
                        <hr />

                        <input type="button" value='<fmt:message key="label.Add.Quotation" />'
                               onclick="window.location.href = 'showForm'; return false;"
                               class="btn btn-primary" /> <br />
                        <br />
                        <c:choose>
                            <c:when test ="${empty quotations}">
                                <div class="panel-title"><fmt:message key="label.Quotation.List.Empty" /></div>
                            </c:when>
                            <c:otherwise>
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <div class="panel-title"><fmt:message key="label.Quotation.List" /></div>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table table-striped table-bordered">
                                            <tr>
                                                <th abbr=""style="min-width: 130px"><fmt:message key="label.Quotation.Author" /></th>
                                                <th><fmt:message key="label.Quotation.Message" /></th>
                                                <th style="min-width: 130px"><fmt:message key="label.Quotation.Action" /></th>
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
                                                        <!-- display the update link --> <a href="${updateLink}"><fmt:message key="label.Quotation.Update" /></a>
                                                        | <a href="${deleteLink}"
                                                             onclick="if (!(confirm('<fmt:message key="label.Quotation.Warning" />')))
                                                                         return false"><fmt:message key="label.Quotation.Delete" /></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>

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