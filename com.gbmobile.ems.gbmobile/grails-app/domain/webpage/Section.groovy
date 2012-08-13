package webpage

class Section {
	Integer sectionOrder
	Label label
	Carousel carousel
	
    static constraints = {
		sectionOrder(blank:false)
		label(blank:false)
		carousel(blank:false)
    }
}
