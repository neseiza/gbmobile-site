<%@ page import="webpage.Section" %>



<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'sectionid', 'error')} required">
	<label for="sectionid">
		<g:message code="section.sectionid.label" default="Sectionid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sectionid" type="number" value="${sectionInstance.sectionid}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'label', 'error')} required">
	<label for="label">
		<g:message code="section.label.label" default="Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="label" name="label.id" from="${webpage.Label.list()}" optionKey="id" required="" value="${sectionInstance?.label?.id}" class="many-to-one"/>
</div>

