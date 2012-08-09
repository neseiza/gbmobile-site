
<%@ page import="webpage.Slide" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'slide.label', default: 'Slide')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-slide" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-slide" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="createTime" title="${message(code: 'slide.createTime.label', default: 'Create Time')}" />
					
						<g:sortableColumn property="descStyle" title="${message(code: 'slide.descStyle.label', default: 'Desc Style')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'slide.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'slide.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'slide.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="slideOrder" title="${message(code: 'slide.slideOrder.label', default: 'Slide Order')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${slideInstanceList}" status="i" var="slideInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${slideInstance.id}">${fieldValue(bean: slideInstance, field: "createTime")}</g:link></td>
					
						<td>${fieldValue(bean: slideInstance, field: "descStyle")}</td>
					
						<td>${fieldValue(bean: slideInstance, field: "description")}</td>
					
						<td><g:formatBoolean boolean="${slideInstance.isActive}" /></td>
					
						<td><g:formatDate date="${slideInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: slideInstance, field: "slideOrder")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${slideInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
