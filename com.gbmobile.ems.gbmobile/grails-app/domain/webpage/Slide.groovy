package webpage

class Slide {
	
	Integer slideid
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
		
    }
}
