
<%@ page import="qotd.Unoauno" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unoauno.label', default: 'Unoauno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unoauno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unoauno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="unoauno.book.label" default="Book" /></th>
					
						<g:sortableColumn property="nombre" title="${message(code: 'unoauno.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="year" title="${message(code: 'unoauno.year.label', default: 'Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unoaunoInstanceList}" status="i" var="unoaunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unoaunoInstance.id}">${fieldValue(bean: unoaunoInstance, field: "book")}</g:link></td>
					
						<td>${fieldValue(bean: unoaunoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: unoaunoInstance, field: "year")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unoaunoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
