
<%@ page import="webpage.Label" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'label.label', default: 'Label')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-label" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-label" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="createdTime" title="${message(code: 'label.createdTime.label', default: 'Created Time')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'label.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'label.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'label.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${labelInstanceList}" status="i" var="labelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${labelInstance.id}">${fieldValue(bean: labelInstance, field: "createdTime")}</g:link></td>
					
						<td>${fieldValue(bean: labelInstance, field: "description")}</td>
					
						<td><g:formatBoolean boolean="${labelInstance.isActive}" /></td>
					
						<td><g:formatDate date="${labelInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${labelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
