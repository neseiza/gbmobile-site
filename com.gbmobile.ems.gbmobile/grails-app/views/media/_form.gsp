<%@ page import="webpage.Media" %>



<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'classStyle', 'error')} ">
	<label for="classStyle">
		<g:message code="media.classStyle.label" default="Class Style" />
		
	</label>
	<g:textField name="classStyle" value="${mediaInstance?.classStyle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="media.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${mediaInstance?.fileName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'isBackGround', 'error')} ">
	<label for="isBackGround">
		<g:message code="media.isBackGround.label" default="Is Back Ground" />
		
	</label>
	<g:checkBox name="isBackGround" value="${mediaInstance?.isBackGround}" />
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'mediaType', 'error')} ">
	<label for="mediaType">
		<g:message code="media.mediaType.label" default="Media Type" />
		
	</label>
	<g:textField name="mediaType" value="${mediaInstance?.mediaType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'mediaid', 'error')} required">
	<label for="mediaid">
		<g:message code="media.mediaid.label" default="Mediaid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mediaid" type="number" value="${mediaInstance.mediaid}" required=""/>
</div>

