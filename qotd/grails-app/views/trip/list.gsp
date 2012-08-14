
<%@ page import="qotd.Trip" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trip" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="city" title="${message(code: 'trip.city.label', default: 'City')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'trip.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'trip.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'trip.notes.label', default: 'Notes')}" />
					
						<g:sortableColumn property="purpose" title="${message(code: 'trip.purpose.label', default: 'Purpose')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'trip.startDate.label', default: 'Start Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tripInstanceList}" status="i" var="tripInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tripInstance.id}">${fieldValue(bean: tripInstance, field: "city")}</g:link></td>
					
						<td><g:formatDate date="${tripInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: tripInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: tripInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: tripInstance, field: "purpose")}</td>
					
						<td><g:formatDate date="${tripInstance.startDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tripInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
