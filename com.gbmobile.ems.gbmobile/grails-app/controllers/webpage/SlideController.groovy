package webpage

import org.springframework.dao.DataIntegrityViolationException

class SlideController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [slideInstanceList: Slide.list(params), slideInstanceTotal: Slide.count()]
    }

    def create() {
        [slideInstance: new Slide(params)]
    }

    def save() {
        def slideInstance = new Slide(params)
		println(params)
        if (!slideInstance.save(flush: true)) {
            render(view: "create", model: [slideInstance: slideInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'slide.label', default: 'Slide'), slideInstance.id])
        redirect(action: "show", id: slideInstance.id)
    }

    def show(Long id) {
        def slideInstance = Slide.get(id)
        if (!slideInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'slide.label', default: 'Slide'), id])
            redirect(action: "list")
            return
        }

        [slideInstance: slideInstance]
    }

    def edit(Long id) {
        def slideInstance = Slide.get(id)
        if (!slideInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'slide.label', default: 'Slide'), id])
            redirect(action: "list")
            return
        }

        [slideInstance: slideInstance]
    }

    def update(Long id, Long version) {
        def slideInstance = Slide.get(id)
        if (!slideInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'slide.label', default: 'Slide'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (slideInstance.version > version) {
                slideInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'slide.label', default: 'Slide')] as Object[],
                          "Another user has updated this Slide while you were editing")
                render(view: "edit", model: [slideInstance: slideInstance])
                return
            }
        }

        slideInstance.properties = params

        if (!slideInstance.save(flush: true)) {
            render(view: "edit", model: [slideInstance: slideInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'slide.label', default: 'Slide'), slideInstance.id])
        redirect(action: "show", id: slideInstance.id)
    }

    def delete(Long id) {
        def slideInstance = Slide.get(id)
        if (!slideInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'slide.label', default: 'Slide'), id])
            redirect(action: "list")
            return
        }

        try {
            slideInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'slide.label', default: 'Slide'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'slide.label', default: 'Slide'), id])
            redirect(action: "show", id: id)
        }
    }
}
