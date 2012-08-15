package webpage
import org.codehaus.groovy.grails.scaffolding.view.ScaffoldingViewResolver
import org.codehaus.groovy.grails.plugins.scaffolding.ScaffoldingGrailsPlugin
import webpage.Section
class Label {
	String description
	Date createdTime
	Date lastUpdated
	Boolean isActive

    static constraints = {
		isActive(blank:false)
		description(maxSize: 65535)
    }
	def doWithSpring = {
		ScaffoldingViewResolver.clearViewCache()
		ScaffoldingGrailsPlugin.onChange()
	}
}
