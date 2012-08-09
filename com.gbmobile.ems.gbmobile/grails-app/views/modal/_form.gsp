<%@ page import="webpage.Modal" %>



<div class="fieldcontain ${hasErrors(bean: modalInstance, field: 'modalid', 'error')} required">
	<label for="modalid">
		<g:message code="modal.modalid.label" default="Modalid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="modalid" type="number" value="${modalInstance.modalid}" required=""/>
</div>

