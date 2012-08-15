package gbmobile

import webpage.Label
import webpage.Section

class LabelTagLib {
	
	static namespace = "cms"
	static returnObjectForTags = ['label']
	
	def label = {
		attrs, body ->
		Integer id = Integer.parseInt(attrs.sectionID)
		def sectionInstance = Section.get(id)
				
		println ('SectionID: ' + id)
		println ('var sectionInstance: ' +[sectionInstance: sectionInstance])
		println('label description: ' + "${sectionInstance?.label.description}")
		out << "${sectionInstance?.label.description}"
		
	}
}
