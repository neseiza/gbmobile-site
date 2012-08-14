package webpage
import org.codehaus.groovy.grails.scaffolding.view.ScaffoldingViewResolver
import org.codehaus.groovy.grails.plugins.scaffolding.ScaffoldingGrailsPlugin

class Slide {
	
	String title
	String titleStyle
	String description
	String descStyle
	Integer slideOrder
	Date createTime
	Date lastUpdated
	Boolean isActive
	static hasMany = [media:Media]

    static constraints = {
		title(blank:false)
		description(blank:false)
		slideOrder(blank:false)
		description(maxSize: 65535)
    }
	def doWithSpring = {
		ScaffoldingViewResolver.clearViewCache()
		ScaffoldingGrailsPlugin.onChange()
	}
}
