package qotd

import org.springframework.dao.DataIntegrityViolationException

class TripController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tripInstanceList: Trip.list(params), tripInstanceTotal: Trip.count()]
    }

    def create() {
        [tripInstance: new Trip(params)]
    }

    def save() {
        def tripInstance = new Trip(params)
        if (!tripInstance.save(flush: true)) {
            render(view: "create", model: [tripInstance: tripInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trip.label', default: 'Trip'), tripInstance.id])
        redirect(action: "show", id: tripInstance.id)
    }

    def show(Long id) {
        def tripInstance = Trip.get(id)
        if (!tripInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), id])
            redirect(action: "list")
            return
        }

        [tripInstance: tripInstance]
    }

    def edit(Long id) {
        def tripInstance = Trip.get(id)
        if (!tripInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), id])
            redirect(action: "list")
            return
        }

        [tripInstance: tripInstance]
    }

    def update(Long id, Long version) {
        def tripInstance = Trip.get(id)
        if (!tripInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tripInstance.version > version) {
                tripInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'trip.label', default: 'Trip')] as Object[],
                          "Another user has updated this Trip while you were editing")
                render(view: "edit", model: [tripInstance: tripInstance])
                return
            }
        }

        tripInstance.properties = params

        if (!tripInstance.save(flush: true)) {
            render(view: "edit", model: [tripInstance: tripInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trip.label', default: 'Trip'), tripInstance.id])
        redirect(action: "show", id: tripInstance.id)
    }

    def delete(Long id) {
        def tripInstance = Trip.get(id)
        if (!tripInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), id])
            redirect(action: "list")
            return
        }

        try {
            tripInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trip.label', default: 'Trip'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trip.label', default: 'Trip'), id])
            redirect(action: "show", id: id)
        }
    }
}
