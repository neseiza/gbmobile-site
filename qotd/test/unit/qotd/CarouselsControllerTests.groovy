package qotd



import org.junit.*
import grails.test.mixin.*

@TestFor(CarouselsController)
@Mock(Carousels)
class CarouselsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/carousels/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.carouselsInstanceList.size() == 0
        assert model.carouselsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.carouselsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.carouselsInstance != null
        assert view == '/carousels/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/carousels/show/1'
        assert controller.flash.message != null
        assert Carousels.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/carousels/list'

        populateValidParams(params)
        def carousels = new Carousels(params)

        assert carousels.save() != null

        params.id = carousels.id

        def model = controller.show()

        assert model.carouselsInstance == carousels
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/carousels/list'

        populateValidParams(params)
        def carousels = new Carousels(params)

        assert carousels.save() != null

        params.id = carousels.id

        def model = controller.edit()

        assert model.carouselsInstance == carousels
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/carousels/list'

        response.reset()

        populateValidParams(params)
        def carousels = new Carousels(params)

        assert carousels.save() != null

        // test invalid parameters in update
        params.id = carousels.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/carousels/edit"
        assert model.carouselsInstance != null

        carousels.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/carousels/show/$carousels.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        carousels.clearErrors()

        populateValidParams(params)
        params.id = carousels.id
        params.version = -1
        controller.update()

        assert view == "/carousels/edit"
        assert model.carouselsInstance != null
        assert model.carouselsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/carousels/list'

        response.reset()

        populateValidParams(params)
        def carousels = new Carousels(params)

        assert carousels.save() != null
        assert Carousels.count() == 1

        params.id = carousels.id

        controller.delete()

        assert Carousels.count() == 0
        assert Carousels.get(carousels.id) == null
        assert response.redirectedUrl == '/carousels/list'
    }
}
