<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/addons/checkboxconfiguratortemplateaddon/responsive/product" %>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/responsive/common" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="cart/${entryNumber}/configure/CHECKBOX" var="addToCartUrl"/>

<template:page pageTitle="${pageTitle}">
    <jsp:body>
        <div id="globalMessages">
            <common:globalMessages/>
        </div>
        <form:form method="post" id="checkboxConfigurationForm" >
            <input id="quantity" name="quantity" type="hidden" value="1" hidden="hidden">
            <product:productConfiguratorTab configurations="${configurations}"/>
            <cms:pageSlot position="Section1" var="comp" element="div" class="productConfiguratorPageSection1">
                <cms:component component="${comp}"/>
            </cms:pageSlot>
            <div style="width:200pt;height:150pt">
                <button id="addToCartButton" type="${buttonType}" class="btn btn-primary btn-block js-add-to-cart js-enable-btn btn-icon glyphicon-shopping-cart" disabled="disabled">
                    <spring:theme code="basket.add.to.basket"/>
                </button>
            </div>
        </form:form>
    </jsp:body>
</template:page>