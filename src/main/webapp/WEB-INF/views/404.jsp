<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
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
                                <div class="panel-title"><fmt:message key="text.Error.Page.Not.Found" /></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

