package webpage

class Label {
	String description
	Date createdTime
	Date lastUpdated
	Boolean isActive
    static constraints = {
		isActive(blank:false)
		description(maxSize: 65535)
    }
}
