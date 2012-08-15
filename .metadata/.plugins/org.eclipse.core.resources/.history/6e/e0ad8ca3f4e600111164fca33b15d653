
<%@ page import="webpage.Carousel" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carousel.label', default: 'Carousel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-carousel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-carousel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list carousel">
			
				<g:if test="${carouselInstance?.carouselOrder}">
				<li class="fieldcontain">
					<span id="carouselOrder-label" class="property-label"><g:message code="carousel.carouselOrder.label" default="Carousel Order" /></span>
					
						<span class="property-value" aria-labelledby="carouselOrder-label"><g:fieldValue bean="${carouselInstance}" field="carouselOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carouselInstance?.modal}">
				<li class="fieldcontain">
					<span id="modal-label" class="property-label"><g:message code="carousel.modal.label" default="Modal" /></span>
					
						<span class="property-value" aria-labelledby="modal-label"><g:link controller="modal" action="show" id="${carouselInstance?.modal?.id}">${carouselInstance?.modal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${carouselInstance?.slides}">
				<li class="fieldcontain">
					<span id="slides-label" class="property-label"><g:message code="carousel.slides.label" default="Slides" /></span>
					
						<g:each in="${carouselInstance.slides}" var="s">
						<span class="property-value" aria-labelledby="slides-label"><g:link controller="slide" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${carouselInstance?.id}" />
					<g:link class="edit" action="edit" id="${carouselInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
