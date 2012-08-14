
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<g:thisYear id="2019" criteria="author"> </g:thisYear>
		
		<g:getByID id="2">Book List</g:getByID>
		
		<g:getByAuthor author="Author 4"></g:getByAuthor>
		
	</body>
</html>
