package webpage

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.MultipartFile

class MediaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	private MultipartFile file;
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [mediaInstanceList: Media.list(params), mediaInstanceTotal: Media.count()]
    }

    def create() {
        [mediaInstance: new Media(params)]
    }

    def save() {
        def mediaInstance = new Media(params)
		//save media if uploaded
		mediaInstance.fileName = FileUpload()
        if (!mediaInstance.save(flush: true)) {
            render(view: "create", model: [mediaInstance: mediaInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'media.label', default: 'Media'), mediaInstance.id])
        redirect(action: "show", id: mediaInstance.id)
    }

    def show(Long id) {
        def mediaInstance = Media.get(id)
        if (!mediaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'media.label', default: 'Media'), id])
            redirect(action: "list")
            return
        }

        [mediaInstance: mediaInstance]
    }

    def edit(Long id) {
        def mediaInstance = Media.get(id)
        if (!mediaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'media.label', default: 'Media'), id])
            redirect(action: "list")
            return
        }

        [mediaInstance: mediaInstance]
    }

    def update(Long id, Long version) {
        def mediaInstance = Media.get(id)
        if (!mediaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'media.label', default: 'Media'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (mediaInstance.version > version) {
                mediaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'media.label', default: 'Media')] as Object[],
                          "Another user has updated this Media while you were editing")
                render(view: "edit", model: [mediaInstance: mediaInstance])
                return
            }
        }

        mediaInstance.properties = params

        if (!mediaInstance.save(flush: true)) {
            render(view: "edit", model: [mediaInstance: mediaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'media.label', default: 'Media'), mediaInstance.id])
        redirect(action: "show", id: mediaInstance.id)
    }

    def delete(Long id) {
        def mediaInstance = Media.get(id)
        if (!mediaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'media.label', default: 'Media'), id])
            redirect(action: "list")
            return
        }

        try {
            mediaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'media.label', default: 'Media'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'media.label', default: 'Media'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def FileUpload(){
		def f = request.getFile('fileName')
		def fileName = f.getOriginalFilename()
		f.transferTo(new File('./web-app/images/'+fileName))
		return fileName
	}

}
