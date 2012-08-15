<%@ page import="webpage.Slide" %>



<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="slide.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${slideInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="slide.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="65535" required="" value="${slideInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'slideOrder', 'error')} required">
	<label for="slideOrder">
		<g:message code="slide.slideOrder.label" default="Slide Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="slideOrder" type="number" value="${slideInstance.slideOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'createTime', 'error')} required">
	<label for="createTime">
		<g:message code="slide.createTime.label" default="Create Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createTime" precision="day"  value="${slideInstance?.createTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'descStyle', 'error')} ">
	<label for="descStyle">
		<g:message code="slide.descStyle.label" default="Desc Style" />
		
	</label>
	<g:textField name="descStyle" value="${slideInstance?.descStyle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="slide.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${slideInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="slide.media.label" default="Media" />
		
	</label>
	<g:select name="media" from="${webpage.Media.list()}" multiple="multiple" optionKey="id" size="5" value="${slideInstance?.media*.id}" optionValue="fileName" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: slideInstance, field: 'titleStyle', 'error')} ">
	<label for="titleStyle">
		<g:message code="slide.titleStyle.label" default="Title Style" />
		
	</label>
	<g:textField name="titleStyle" value="${slideInstance?.titleStyle}"/>
</div>

