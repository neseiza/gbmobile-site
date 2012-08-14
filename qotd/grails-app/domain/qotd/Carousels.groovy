package qotd

class Carousels {
	static hasMany = [trip: Trip]
	Integer style
    static constraints = {
    }
}

class Trip{
	static belongsTo = Carousels
	String images
}