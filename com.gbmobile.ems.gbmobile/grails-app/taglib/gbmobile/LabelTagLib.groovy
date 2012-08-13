package gbmobile

import org.springframework.dao.DataIntegrityViolationException

import webpage.LabelController;

class LabelTagLib {
	def getLabelbyId = { attrs, body ->
		String id_l = attrs.id_l
		print(id_l)
		function()
		out << "sadas"
	}
	
	def function(){
		out << "function"
	}
	
}
