
<%@ page import="webpage.Modal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modal.label', default: 'Modal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-modal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-modal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="className" title="${message(code: 'modal.className.label', default: 'Class Name')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'modal.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'modal.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${modalInstanceList}" status="i" var="modalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${modalInstance.id}">${fieldValue(bean: modalInstance, field: "className")}</g:link></td>
					
						<td>${fieldValue(bean: modalInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: modalInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${modalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
