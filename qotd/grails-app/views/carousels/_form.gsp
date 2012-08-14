<%@ page import="qotd.Carousels" %>



<div class="fieldcontain ${hasErrors(bean: carouselsInstance, field: 'style', 'error')} required">
	<label for="style">
		<g:message code="carousels.style.label" default="Style" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="style" type="number" value="${carouselsInstance.style}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carouselsInstance, field: 'trip', 'error')} ">
	<label for="trip">
		<g:message code="carousels.trip.label" default="Trip" />
		
	</label>
	<g:select name="trip" from="${qotd.Trip.list()}" multiple="multiple" optionKey="id" size="5" value="${carouselsInstance?.trip*.id}" class="many-to-many"/>
</div>

