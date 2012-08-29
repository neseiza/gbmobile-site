<%@ page import="webpage.Media" %>



<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'fileName', 'error')} required">
	<label for="fileName">
		<g:message code="media.fileName.label" default="File Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fileName" required="" value="${mediaInstance?.fileName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'mediaType', 'error')} required">
	<label for="mediaType">
		<g:message code="media.mediaType.label" default="Media Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mediaType" required="" value="${mediaInstance?.mediaType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'classStyle', 'error')} required">
	<label for="classStyle">
		<g:message code="media.classStyle.label" default="Class Style" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="classStyle" required="" value="${mediaInstance?.classStyle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'modalOrder', 'error')} required">
	<label for="modalOrder">
		<g:message code="media.modalOrder.label" default="Modal Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="modalOrder" type="number" value="${mediaInstance.modalOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'isBackGround', 'error')} ">
	<label for="isBackGround">
		<g:message code="media.isBackGround.label" default="Is Back Ground" />
		
	</label>
	<g:checkBox name="isBackGround" value="${mediaInstance?.isBackGround}" />
</div>

