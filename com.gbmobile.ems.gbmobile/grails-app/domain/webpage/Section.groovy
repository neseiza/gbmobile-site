package webpage

class Section {
	Integer sectionid
	Label label
	
    static constraints = {
		sectionid unique:true
    }
}
