
<%@ page import="webpage.Slide" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'slide.label', default: 'Slide')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-slide" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-slide" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list slide">
			
				<g:if test="${slideInstance?.createTime}">
				<li class="fieldcontain">
					<span id="createTime-label" class="property-label"><g:message code="slide.createTime.label" default="Create Time" /></span>
					
						<span class="property-value" aria-labelledby="createTime-label"><g:formatDate date="${slideInstance?.createTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.descStyle}">
				<li class="fieldcontain">
					<span id="descStyle-label" class="property-label"><g:message code="slide.descStyle.label" default="Desc Style" /></span>
					
						<span class="property-value" aria-labelledby="descStyle-label"><g:fieldValue bean="${slideInstance}" field="descStyle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="slide.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${slideInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="slide.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${slideInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="slide.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${slideInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.slideOrder}">
				<li class="fieldcontain">
					<span id="slideOrder-label" class="property-label"><g:message code="slide.slideOrder.label" default="Slide Order" /></span>
					
						<span class="property-value" aria-labelledby="slideOrder-label"><g:fieldValue bean="${slideInstance}" field="slideOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.slideid}">
				<li class="fieldcontain">
					<span id="slideid-label" class="property-label"><g:message code="slide.slideid.label" default="Slideid" /></span>
					
						<span class="property-value" aria-labelledby="slideid-label"><g:fieldValue bean="${slideInstance}" field="slideid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="slide.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${slideInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${slideInstance?.titleStyle}">
				<li class="fieldcontain">
					<span id="titleStyle-label" class="property-label"><g:message code="slide.titleStyle.label" default="Title Style" /></span>
					
						<span class="property-value" aria-labelledby="titleStyle-label"><g:fieldValue bean="${slideInstance}" field="titleStyle"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${slideInstance?.id}" />
					<g:link class="edit" action="edit" id="${slideInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
