package qotd

import org.springframework.dao.DataIntegrityViolationException

class UnoaunoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [unoaunoInstanceList: Unoauno.list(params), unoaunoInstanceTotal: Unoauno.count()]
    }

    def create() {
        [unoaunoInstance: new Unoauno(params)]
    }

    def save() {
        def unoaunoInstance = new Unoauno(params)
        if (!unoaunoInstance.save(flush: true)) {
            render(view: "create", model: [unoaunoInstance: unoaunoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), unoaunoInstance.id])
        redirect(action: "show", id: unoaunoInstance.id)
    }

    def show(Long id) {
        def unoaunoInstance = Unoauno.get(id)
        if (!unoaunoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), id])
            redirect(action: "list")
            return
        }

        [unoaunoInstance: unoaunoInstance]
    }

    def edit(Long id) {
        def unoaunoInstance = Unoauno.get(id)
        if (!unoaunoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), id])
            redirect(action: "list")
            return
        }

        [unoaunoInstance: unoaunoInstance]
    }

    def update(Long id, Long version) {
        def unoaunoInstance = Unoauno.get(id)
        if (!unoaunoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (unoaunoInstance.version > version) {
                unoaunoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'unoauno.label', default: 'Unoauno')] as Object[],
                          "Another user has updated this Unoauno while you were editing")
                render(view: "edit", model: [unoaunoInstance: unoaunoInstance])
                return
            }
        }

        unoaunoInstance.properties = params

        if (!unoaunoInstance.save(flush: true)) {
            render(view: "edit", model: [unoaunoInstance: unoaunoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), unoaunoInstance.id])
        redirect(action: "show", id: unoaunoInstance.id)
    }

    def delete(Long id) {
        def unoaunoInstance = Unoauno.get(id)
        if (!unoaunoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), id])
            redirect(action: "list")
            return
        }

        try {
            unoaunoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'unoauno.label', default: 'Unoauno'), id])
            redirect(action: "show", id: id)
        }
    }
}
