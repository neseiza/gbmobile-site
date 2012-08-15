
<%@ page import="webpage.Section" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-section" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list section">
			
				<g:if test="${sectionInstance?.sectionOrder}">
				<li class="fieldcontain">
					<span id="sectionOrder-label" class="property-label"><g:message code="section.sectionOrder.label" default="Section Order" /></span>
					
						<span class="property-value" aria-labelledby="sectionOrder-label"><g:fieldValue bean="${sectionInstance}" field="sectionOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.label}">
				<li class="fieldcontain">
					<span id="label-label" class="property-label"><g:message code="section.label.label" default="Label" /></span>
					
						<span class="property-value" aria-labelledby="label-label"><g:link controller="label" action="show" id="${sectionInstance?.label?.id}">${sectionInstance?.label?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.carousel}">
				<li class="fieldcontain">
					<span id="carousel-label" class="property-label"><g:message code="section.carousel.label" default="Carousel" /></span>
					
						<span class="property-value" aria-labelledby="carousel-label"><g:link controller="carousel" action="show" id="${sectionInstance?.carousel?.id}">${sectionInstance?.carousel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sectionInstance?.id}" />
					<g:link class="edit" action="edit" id="${sectionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
