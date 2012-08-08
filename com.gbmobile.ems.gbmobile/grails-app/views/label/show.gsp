
<%@ page import="webpage.Label" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'label.label', default: 'Label')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-label" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-label" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list label">
			
				<g:if test="${labelInstance?.createdTime}">
				<li class="fieldcontain">
					<span id="createdTime-label" class="property-label"><g:message code="label.createdTime.label" default="Created Time" /></span>
					
						<span class="property-value" aria-labelledby="createdTime-label"><g:formatDate date="${labelInstance?.createdTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${labelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="label.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${labelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${labelInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="label.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${labelInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${labelInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="label.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${labelInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${labelInstance?.id}" />
					<g:link class="edit" action="edit" id="${labelInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
