package gbmobile

class LabelTagLib {
	def label = {
		attrs, body ->
		Integer sectionID = Integer.parseInt(attrs.sectionID)
		Section.get(id)
		println ('Section: ' + sectionID)
	}
}
