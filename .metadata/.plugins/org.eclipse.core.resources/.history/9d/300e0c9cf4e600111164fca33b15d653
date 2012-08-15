<%@ page import="webpage.Section" %>



<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'sectionOrder', 'error')} required">
	<label for="sectionOrder">
		<g:message code="section.sectionOrder.label" default="Section Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sectionOrder" type="number" value="${sectionInstance.sectionOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'label', 'error')} required">
	<label for="label">
		<g:message code="section.label.label" default="Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="label" name="label.id" from="${webpage.Label.list()}" optionKey="id" required="" value="${sectionInstance?.label?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'carousel', 'error')} required">
	<label for="carousel">
		<g:message code="section.carousel.label" default="Carousel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carousel" name="carousel.id" from="${webpage.Carousel.list()}" optionKey="id" required="" value="${sectionInstance?.carousel?.id}" class="many-to-one"/>
</div>

