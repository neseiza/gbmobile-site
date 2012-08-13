<%@ page import="webpage.Carousel" %>



<div class="fieldcontain ${hasErrors(bean: carouselInstance, field: 'carouselOrder', 'error')} required">
	<label for="carouselOrder">
		<g:message code="carousel.carouselOrder.label" default="Carousel Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="carouselOrder" type="number" value="${carouselInstance.carouselOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: carouselInstance, field: 'modal', 'error')} required">
	<label for="modal">
		<g:message code="carousel.modal.label" default="Modal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modal" name="modal.id" from="${webpage.Modal.list()}" optionKey="id" required="" value="${carouselInstance?.modal?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carouselInstance, field: 'slides', 'error')} ">
	<label for="slides">
		<g:message code="carousel.slides.label" default="Slides" />
		
	</label>
	<g:select name="slides" from="${webpage.Slide.list()}" multiple="multiple" optionKey="id" size="5" value="${carouselInstance?.slides*.id}" class="many-to-many"/>
</div>

