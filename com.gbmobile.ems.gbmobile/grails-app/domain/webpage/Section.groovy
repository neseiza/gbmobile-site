package webpage

import org.codehaus.groovy.grails.scaffolding.view.ScaffoldingViewResolver
import org.codehaus.groovy.grails.plugins.scaffolding.ScaffoldingGrailsPlugin
import webpage.Label
import webpage.Carousel

class Section {
	Integer sectionOrder
	Carousel carousel
	Label label	
    static constraints = {
		sectionOrder(blank:false)
		label(blank:false)
		carousel(blank:false)
    }
	def doWithSpring = {
		ScaffoldingViewResolver.clearViewCache()
		ScaffoldingGrailsPlugin.onChange()
	}
}
