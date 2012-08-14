package qotd

import org.springframework.dao.DataIntegrityViolationException

class CarouselsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [carouselsInstanceList: Carousels.list(params), carouselsInstanceTotal: Carousels.count()]
    }

    def create() {
        [carouselsInstance: new Carousels(params)]
    }

    def save() {
        def carouselsInstance = new Carousels(params)
        if (!carouselsInstance.save(flush: true)) {
            render(view: "create", model: [carouselsInstance: carouselsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'carousels.label', default: 'Carousels'), carouselsInstance.id])
        redirect(action: "show", id: carouselsInstance.id)
    }

    def show(Long id) {
        def carouselsInstance = Carousels.get(id)
        if (!carouselsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousels.label', default: 'Carousels'), id])
            redirect(action: "list")
            return
        }

        [carouselsInstance: carouselsInstance]
    }

    def edit(Long id) {
        def carouselsInstance = Carousels.get(id)
        if (!carouselsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousels.label', default: 'Carousels'), id])
            redirect(action: "list")
            return
        }

        [carouselsInstance: carouselsInstance]
    }

    def update(Long id, Long version) {
        def carouselsInstance = Carousels.get(id)
        if (!carouselsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousels.label', default: 'Carousels'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (carouselsInstance.version > version) {
                carouselsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'carousels.label', default: 'Carousels')] as Object[],
                          "Another user has updated this Carousels while you were editing")
                render(view: "edit", model: [carouselsInstance: carouselsInstance])
                return
            }
        }

        carouselsInstance.properties = params

        if (!carouselsInstance.save(flush: true)) {
            render(view: "edit", model: [carouselsInstance: carouselsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'carousels.label', default: 'Carousels'), carouselsInstance.id])
        redirect(action: "show", id: carouselsInstance.id)
    }

    def delete(Long id) {
        def carouselsInstance = Carousels.get(id)
        if (!carouselsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousels.label', default: 'Carousels'), id])
            redirect(action: "list")
            return
        }

        try {
            carouselsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'carousels.label', default: 'Carousels'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'carousels.label', default: 'Carousels'), id])
            redirect(action: "show", id: id)
        }
    }
}
