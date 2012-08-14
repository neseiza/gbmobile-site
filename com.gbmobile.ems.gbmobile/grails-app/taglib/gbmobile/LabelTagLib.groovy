package gbmobile
import webpage.Label
import webpage.Section

class LabelTagLib {
	def label = {
		attrs, body ->  
		Integer id = Integer.parseInt(attrs.sectionID)
	
		Section sec
		  //Label label = Section.countByLabelAnd(id)
		//Label label = Section.findByLabel()  
		println ('Section: ' + sec)
	}
}
