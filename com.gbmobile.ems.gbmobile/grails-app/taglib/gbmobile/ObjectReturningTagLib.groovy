package gbmobile
import webpage.Section
class ObjectReturningTagLib {
	static namespace = "cms"
	static returnObjectForTags = ['content']
	
	def content = { attrs, body ->
		Section.findBySectionOrder(1)?.content
	}
	
}
