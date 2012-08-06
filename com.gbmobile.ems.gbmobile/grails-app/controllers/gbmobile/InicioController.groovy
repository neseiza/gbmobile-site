package gbmobile

import grails.converters.JSON

class InicioController {

    def index() { }
    
    def contacto() {
    }
    
    def sendmail()
    {
    	def destinatario = "mauricio.conde@gbmobile.com"
		def asunto = "Prueba contacto gbmobile"
		def cuerpo = "<html><head><meta charset='utf-8'><title>Informacion de contacto</title><style>body {font:16px/18px sans-serif; color: #919191; }</style></head>" +
		"<body><h3>Informacion de contacto</h3><p>Nombre: <b>"+params.name+"</b></p><p>Empresa: <b>"+params.empresa+"</b></p><p>Email: <b>"+params.email+"</b></p></body></html>"

		//para el envío en formato HTML
		sendMail {
  			to destinatario
  			subject asunto
  			html cuerpo
		}
		
    	print "sendmail"

    	def response = [status:'success', body:cuerpo]
    	render response as JSON
    }

}
