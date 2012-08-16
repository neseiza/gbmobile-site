package webpage
import org.codehaus.groovy.grails.scaffolding.view.ScaffoldingViewResolver
import org.codehaus.groovy.grails.plugins.scaffolding.ScaffoldingGrailsPlugin

class Media {

	String fileName
	String mediaType
	Boolean isBackGround = false
	String classStyle
	Integer modalOrder
	
	static mapping = {
		id generator: 'increment'
		cache 'non-transactional'
	}
    static constraints = {
    	fileName(blank: false)
    	mediaType(blank: false)
    	classStyle(blank: false)
		modalOrder(blank:true)
    }
	def doWithSpring = {
		ScaffoldingViewResolver.clearViewCache()
		ScaffoldingGrailsPlugin.onChange()
	}
}
