<%@ page import="webpage.Modal" %>



<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="modal.media.label" default="Media" />
		
	</label>
	<g:select name="media" from="${webpage.Media.list()}" multiple="multiple" optionKey="id" size="5" value="${modalInstance?.media*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="modal.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${modalInstance?.name}"/>
</div>

