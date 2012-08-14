package webpage

import org.springframework.dao.DataIntegrityViolationException

class LabelController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [labelInstanceList: Label.list(params), labelInstanceTotal: Label.count()]
    }

    def create() {
        [labelInstance: new Label(params)]
    }

    def save() {
        def labelInstance = new Label(params)
        if (!labelInstance.save(flush: true)) {
            render(view: "create", model: [labelInstance: labelInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'label.label', default: 'Label'), labelInstance.id])
        redirect(action: "show", id: labelInstance.id)
    }

    def show(Long id) {
        def labelInstance = Label.get(id)
        if (!labelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'label.label', default: 'Label'), id])
            redirect(action: "list")
            return
        }

        [labelInstance: labelInstance]
    }

    def edit(Long id) {
        def labelInstance = Label.get(id)
        if (!labelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'label.label', default: 'Label'), id])
            redirect(action: "list")
            return
        }

        [labelInstance: labelInstance]
    }

    def update(Long id, Long version) {
        def labelInstance = Label.get(id)
        if (!labelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'label.label', default: 'Label'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (labelInstance.version > version) {
                labelInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'label.label', default: 'Label')] as Object[],
                          "Another user has updated this Label while you were editing")
                render(view: "edit", model: [labelInstance: labelInstance])
                return
            }
        }

        labelInstance.properties = params

        if (!labelInstance.save(flush: true)) {
            render(view: "edit", model: [labelInstance: labelInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'label.label', default: 'Label'), labelInstance.id])
        redirect(action: "show", id: labelInstance.id)
    }

    def delete(Long id) {
        def labelInstance = Label.get(id)
        if (!labelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'label.label', default: 'Label'), id])
            redirect(action: "list")
            return
        }

        try {
            labelInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'label.label', default: 'Label'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'label.label', default: 'Label'), id])
            redirect(action: "show", id: id)
        }
    }
}
