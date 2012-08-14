<%@ page import="qotd.Unoauno" %>



<div class="fieldcontain ${hasErrors(bean: unoaunoInstance, field: 'book', 'error')} required">
	<label for="book">
		<g:message code="unoauno.book.label" default="Book" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="book" name="book.id" from="${qotd.Book.list()}" optionKey="id" required="" value="${unoaunoInstance?.book?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unoaunoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="unoauno.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${unoaunoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unoaunoInstance, field: 'year', 'error')} ">
	<label for="year">
		<g:message code="unoauno.year.label" default="Year" />
		
	</label>
	<g:textField name="year" value="${unoaunoInstance?.year}"/>
</div>

