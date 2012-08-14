package webpage
import org.codehaus.groovy.grails.scaffolding.view.ScaffoldingViewResolver
import org.codehaus.groovy.grails.plugins.scaffolding.ScaffoldingGrailsPlugin


class Carousel {
	Integer carouselOrder
	Modal modal
	
	static hasMany = [slides:Slide]
	
	static mapping = {
		cache 'transactional'
	}
    
	static constraints = {
    }
	
	def doWithSpring = {
		ScaffoldingViewResolver.clearViewCache()
		ScaffoldingGrailsPlugin.onChange()
	}
}
