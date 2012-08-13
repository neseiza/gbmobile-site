package webpage

class Carousel {
	Integer carouselOrder
	Modal modal
	
	static hasMany = [slides:Slide]
	
	static mapping = {
		cache 'transactional'
	}
    
	static constraints = {
    }
}
