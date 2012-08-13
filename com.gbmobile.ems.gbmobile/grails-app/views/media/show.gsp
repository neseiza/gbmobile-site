
<%@ page import="webpage.Media" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-media" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-media" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list media">
			
				<g:if test="${mediaInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="media.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${mediaInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mediaInstance?.mediaType}">
				<li class="fieldcontain">
					<span id="mediaType-label" class="property-label"><g:message code="media.mediaType.label" default="Media Type" /></span>
					
						<span class="property-value" aria-labelledby="mediaType-label"><g:fieldValue bean="${mediaInstance}" field="mediaType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mediaInstance?.classStyle}">
				<li class="fieldcontain">
					<span id="classStyle-label" class="property-label"><g:message code="media.classStyle.label" default="Class Style" /></span>
					
						<span class="property-value" aria-labelledby="classStyle-label"><g:fieldValue bean="${mediaInstance}" field="classStyle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mediaInstance?.modalOrder}">
				<li class="fieldcontain">
					<span id="modalOrder-label" class="property-label"><g:message code="media.modalOrder.label" default="Modal Order" /></span>
					
						<span class="property-value" aria-labelledby="modalOrder-label"><g:fieldValue bean="${mediaInstance}" field="modalOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mediaInstance?.isBackGround}">
				<li class="fieldcontain">
					<span id="isBackGround-label" class="property-label"><g:message code="media.isBackGround.label" default="Is Back Ground" /></span>
					
						<span class="property-value" aria-labelledby="isBackGround-label"><g:formatBoolean boolean="${mediaInstance?.isBackGround}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${mediaInstance?.id}" />
					<g:link class="edit" action="edit" id="${mediaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
