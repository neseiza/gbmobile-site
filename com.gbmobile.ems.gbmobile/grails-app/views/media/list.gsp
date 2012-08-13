
<%@ page import="webpage.Media" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-media" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-media" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fileName" title="${message(code: 'media.fileName.label', default: 'File Name')}" />
					
						<g:sortableColumn property="mediaType" title="${message(code: 'media.mediaType.label', default: 'Media Type')}" />
					
						<g:sortableColumn property="classStyle" title="${message(code: 'media.classStyle.label', default: 'Class Style')}" />
					
						<g:sortableColumn property="modalOrder" title="${message(code: 'media.modalOrder.label', default: 'Modal Order')}" />
					
						<g:sortableColumn property="isBackGround" title="${message(code: 'media.isBackGround.label', default: 'Is Back Ground')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mediaInstanceList}" status="i" var="mediaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mediaInstance.id}">${fieldValue(bean: mediaInstance, field: "fileName")}</g:link></td>
					
						<td>${fieldValue(bean: mediaInstance, field: "mediaType")}</td>
					
						<td>${fieldValue(bean: mediaInstance, field: "classStyle")}</td>
					
						<td>${fieldValue(bean: mediaInstance, field: "modalOrder")}</td>
					
						<td><g:formatBoolean boolean="${mediaInstance.isBackGround}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mediaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
