<%@ page language="java" contentType="text/html; charset=Windows-1252"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="Windows-1252">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><fmt:message key="label.Add.Quotation" /></title>
        <meta name="description" content="">        
        <link href="http://allfont.ru/allfont.css?fonts=hermes" rel="stylesheet" type="text/css" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='stylesheet' href='<c:url value="/resources/css/normalize.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/font-awesome.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/bootstrap.min.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/templatemo-style.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/normalize.css" />' type='text/css' media='all' />

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

                    <div class="col-md-offset-2 col-md-7">
                        <br/ >
                            <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="panel-title"><fmt:message key="label.Add.Quotation" /></div>
                            </div>
                            <div class="panel-body">
                                <form:form action="saveQuotation" cssClass="form-horizontal" method="post" modelAttribute="quotation">
                                    <!-- need to associate this data with quotation id -->
                                    <form:hidden path="id" />

                                    <div class="form-group">
                                        <label for="firstname" class="col-md-3 control-label"><fmt:message key="label.Quotation.Message" /></label>
                                        <div class="col-md-9">
                                            <form:input path="message" cssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="lastname" class="col-md-3 control-label"><fmt:message key="label.Quotation.Author" /></label>
                                        <div class="col-md-9">
                                            <form:input path="author" cssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <!-- Button -->
                                        <div class="col-md-offset-3 col-md-9">
                                            <form:button cssClass="btn btn-primary"><fmt:message key="label.Quotation.Submit" /></form:button>
                                            </div>
                                        </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>