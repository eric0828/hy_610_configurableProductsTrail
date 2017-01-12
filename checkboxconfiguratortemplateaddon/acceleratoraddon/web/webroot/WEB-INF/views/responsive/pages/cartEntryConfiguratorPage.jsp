<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/addons/checkboxconfiguratortemplateaddon/responsive/product" %>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/responsive/common" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/cart/${entryNumber}/configuration/CHECKBOX" var="cartPageUrl"/>
<template:page pageTitle="${pageTitle}">
    <jsp:body>
        <div id="globalMessages">
            <common:globalMessages/>
        </div>
        <form:form method="post" id="checkBoxConfigurationForm" action="${cartPageUrl}">
            <input id="quantity" name="quantity" type="hidden" value="1" hidden="hidden">
            <product:productConfiguratorTab configurations="${configurations}"/>
            <div class="config-action">
                <div style="width:200pt;height:150pt">
                    <button id="update" type="submit" class="btn btn-primary btn-block">
                        <spring:theme code="configuration.page.update"/>
                    </button>
                </div>
            </div>
        </form:form>
    </jsp:body>
</template:page>