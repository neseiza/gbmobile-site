package webpage

import org.springframework.dao.DataIntegrityViolationException

class ModalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [modalInstanceList: Modal.list(params), modalInstanceTotal: Modal.count()]
    }

    def create() {
        [modalInstance: new Modal(params)]
    }

    def save() {
        def modalInstance = new Modal(params)
        if (!modalInstance.save(flush: true)) {
            render(view: "create", model: [modalInstance: modalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'modal.label', default: 'Modal'), modalInstance.id])
        redirect(action: "show", id: modalInstance.id)
    }

    def show(Long id) {
        def modalInstance = Modal.get(id)
        if (!modalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modal.label', default: 'Modal'), id])
            redirect(action: "list")
            return
        }

        [modalInstance: modalInstance]
    }

    def edit(Long id) {
        def modalInstance = Modal.get(id)
        if (!modalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modal.label', default: 'Modal'), id])
            redirect(action: "list")
            return
        }

        [modalInstance: modalInstance]
    }

    def update(Long id, Long version) {
        def modalInstance = Modal.get(id)
        if (!modalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modal.label', default: 'Modal'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (modalInstance.version > version) {
                modalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'modal.label', default: 'Modal')] as Object[],
                          "Another user has updated this Modal while you were editing")
                render(view: "edit", model: [modalInstance: modalInstance])
                return
            }
        }

        modalInstance.properties = params

        if (!modalInstance.save(flush: true)) {
            render(view: "edit", model: [modalInstance: modalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'modal.label', default: 'Modal'), modalInstance.id])
        redirect(action: "show", id: modalInstance.id)
    }

    def delete(Long id) {
        def modalInstance = Modal.get(id)
        if (!modalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modal.label', default: 'Modal'), id])
            redirect(action: "list")
            return
        }

        try {
            modalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'modal.label', default: 'Modal'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'modal.label', default: 'Modal'), id])
            redirect(action: "show", id: id)
        }
    }
}
