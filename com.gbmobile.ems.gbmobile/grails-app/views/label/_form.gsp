<%@ page import="webpage.Label" %>



<div class="fieldcontain ${hasErrors(bean: labelInstance, field: 'createdTime', 'error')} required">
	<label for="createdTime">
		<g:message code="label.createdTime.label" default="Created Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdTime" precision="day"  value="${labelInstance?.createdTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: labelInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="label.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${labelInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: labelInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="label.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${labelInstance?.isActive}" />
</div>

