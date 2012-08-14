package webpage

import org.springframework.dao.DataIntegrityViolationException

class CarouselController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [carouselInstanceList: Carousel.list(params), carouselInstanceTotal: Carousel.count()]
    }

    def create() {
        [carouselInstance: new Carousel(params)]
    }

    def save() {
        def carouselInstance = new Carousel(params)
        if (!carouselInstance.save(flush: true)) {
            render(view: "create", model: [carouselInstance: carouselInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'carousel.label', default: 'Carousel'), carouselInstance.id])
        redirect(action: "show", id: carouselInstance.id)
    }

    def show(Long id) {
        def carouselInstance = Carousel.get(id)
        if (!carouselInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousel.label', default: 'Carousel'), id])
            redirect(action: "list")
            return
        }

        [carouselInstance: carouselInstance]
    }

    def edit(Long id) {
        def carouselInstance = Carousel.get(id)
        if (!carouselInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousel.label', default: 'Carousel'), id])
            redirect(action: "list")
            return
        }

        [carouselInstance: carouselInstance]
    }

    def update(Long id, Long version) {
        def carouselInstance = Carousel.get(id)
        if (!carouselInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousel.label', default: 'Carousel'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (carouselInstance.version > version) {
                carouselInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'carousel.label', default: 'Carousel')] as Object[],
                          "Another user has updated this Carousel while you were editing")
                render(view: "edit", model: [carouselInstance: carouselInstance])
                return
            }
        }

        carouselInstance.properties = params

        if (!carouselInstance.save(flush: true)) {
            render(view: "edit", model: [carouselInstance: carouselInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'carousel.label', default: 'Carousel'), carouselInstance.id])
        redirect(action: "show", id: carouselInstance.id)
    }

    def delete(Long id) {
        def carouselInstance = Carousel.get(id)
        if (!carouselInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carousel.label', default: 'Carousel'), id])
            redirect(action: "list")
            return
        }

        try {
            carouselInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'carousel.label', default: 'Carousel'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'carousel.label', default: 'Carousel'), id])
            redirect(action: "show", id: id)
        }
    }
}
