package webpage



import org.junit.*
import grails.test.mixin.*

@TestFor(ModalController)
@Mock(Modal)
class ModalControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/modal/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.modalInstanceList.size() == 0
        assert model.modalInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.modalInstance != null
    }

    void testSave() {
        controller.save()

        assert model.modalInstance != null
        assert view == '/modal/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/modal/show/1'
        assert controller.flash.message != null
        assert Modal.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/modal/list'

        populateValidParams(params)
        def modal = new Modal(params)

        assert modal.save() != null

        params.id = modal.id

        def model = controller.show()

        assert model.modalInstance == modal
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/modal/list'

        populateValidParams(params)
        def modal = new Modal(params)

        assert modal.save() != null

        params.id = modal.id

        def model = controller.edit()

        assert model.modalInstance == modal
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/modal/list'

        response.reset()

        populateValidParams(params)
        def modal = new Modal(params)

        assert modal.save() != null

        // test invalid parameters in update
        params.id = modal.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/modal/edit"
        assert model.modalInstance != null

        modal.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/modal/show/$modal.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        modal.clearErrors()

        populateValidParams(params)
        params.id = modal.id
        params.version = -1
        controller.update()

        assert view == "/modal/edit"
        assert model.modalInstance != null
        assert model.modalInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/modal/list'

        response.reset()

        populateValidParams(params)
        def modal = new Modal(params)

        assert modal.save() != null
        assert Modal.count() == 1

        params.id = modal.id

        controller.delete()

        assert Modal.count() == 0
        assert Modal.get(modal.id) == null
        assert response.redirectedUrl == '/modal/list'
    }
}
