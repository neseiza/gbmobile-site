<%@ page import="webpage.Carousel" %>



<div class="fieldcontain ${hasErrors(bean: carouselInstance, field: 'carouselOrder', 'error')} required">
	<label for="carouselOrder">
		<g:message code="carousel.carouselOrder.label" default="Carousel Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="carouselOrder" type="number" value="${carouselInstance.carouselOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carouselInstance, field: 'carouselid', 'error')} required">
	<label for="carouselid">
		<g:message code="carousel.carouselid.label" default="Carouselid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="carouselid" type="number" value="${carouselInstance.carouselid}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carouselInstance, field: 'slides', 'error')} ">
	<label for="slides">
		<g:message code="carousel.slides.label" default="Slides" />
		
	</label>
	<g:select name="slides" from="${webpage.Slide.list()}" multiple="multiple" optionKey="id" size="5" value="${carouselInstance?.slides*.id}" class="many-to-many"/>
</div>

