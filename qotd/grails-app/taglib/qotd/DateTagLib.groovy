package qotd

import java.awt.print.Book;

//import java.awt.print.Book;

class DateTagLib {
	def thisYear = {
		attrs, body ->
		String year = attrs.id
		String criteria = attrs.criteria
		out << year
		out << '\ncriteria: ' + criteria
		out << ' \ncontroller ' + controllerName
	}

	def getByAuthor = {
		attrs, body ->
		String author = attrs.author
		println ('' + Book.countByAuthor(author) + ' books written by ' + author)
	}

	def getByID = {
		attrs, body ->
		Integer id = Integer.parseInt(attrs.id)
		if (Book.get(id)) println ('The Id book: ' + id + " exists")
		else println ('The Id book: ' + id + " does not exists")
	}

}
