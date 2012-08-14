package qotd

class QuoteController {

    def index() { 	
	}
	
	def home(){
		render "<h1>Hello grails!</h1>"
	}
	def random(){
		def staticAuthor = "Anonymous"
		def staticContent = "Real programmers don't eat much quiche"
		[ autor:staticAuthor, content:staticContent]
	}
}
