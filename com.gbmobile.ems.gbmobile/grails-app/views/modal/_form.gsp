<%@ page import="webpage.Modal" %>



<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'className', 'error')} ">
	<label for="className">
		<g:message code="modal.className.label" default="Class Name" />
		
	</label>
	<g:textField name="className" value="${modalInstance?.className}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="modal.media.label" default="Media" />
		
	</label>
	<g:select name="media" from="${webpage.Media.list()}" multiple="multiple" optionKey="id" size="5" value="${modalInstance?.media*.id}" optionValue="fileName" class="many-to-many" />
	<!-- modalInstance?.media*.id -->
</div>

<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="modal.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${modalInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="modal.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${modalInstance?.title}"/>
</div>

