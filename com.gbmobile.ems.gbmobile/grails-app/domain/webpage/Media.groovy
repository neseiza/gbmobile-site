package webpage

class Media {

	String fileName
	String mediaType
	Boolean isBackGround = false
	String classStyle
	Integer modalOrder
	
	static mapping = {id generator: 'increment'}
    static constraints = {
    	fileName(blank: false)
    	mediaType(blank: false)
    	classStyle(blank: false)
		modalOrder(blank:true)
    }
}
