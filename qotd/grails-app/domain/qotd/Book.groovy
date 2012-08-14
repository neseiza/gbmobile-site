package qotd

import org.codehaus.groovy.grails.scaffolding.view.ScaffoldingViewResolver
import org.codehaus.groovy.grails.plugins.scaffolding.ScaffoldingGrailsPlugin

class Book {
	String title 
	String author
	Integer pages
	Integer isbn
	
    static constraints = {
    }
	
	def doWithSpring = {
		ScaffoldingViewResolver.clearViewCache()
		ScaffoldingGrailsPlugin.onChange()
	}
}
