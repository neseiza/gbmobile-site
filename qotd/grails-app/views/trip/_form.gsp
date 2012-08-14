<%@ page import="qotd.Trip" %>



<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="trip.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${tripInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="trip.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${tripInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="trip.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tripInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="trip.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${tripInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'purpose', 'error')} ">
	<label for="purpose">
		<g:message code="trip.purpose.label" default="Purpose" />
		
	</label>
	<g:textField name="purpose" value="${tripInstance?.purpose}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="trip.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${tripInstance?.startDate}"  />
</div>

