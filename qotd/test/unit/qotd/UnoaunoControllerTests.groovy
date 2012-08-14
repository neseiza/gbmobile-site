package qotd



import org.junit.*
import grails.test.mixin.*

@TestFor(UnoaunoController)
@Mock(Unoauno)
class UnoaunoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/unoauno/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.unoaunoInstanceList.size() == 0
        assert model.unoaunoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.unoaunoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.unoaunoInstance != null
        assert view == '/unoauno/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/unoauno/show/1'
        assert controller.flash.message != null
        assert Unoauno.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/unoauno/list'

        populateValidParams(params)
        def unoauno = new Unoauno(params)

        assert unoauno.save() != null

        params.id = unoauno.id

        def model = controller.show()

        assert model.unoaunoInstance == unoauno
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/unoauno/list'

        populateValidParams(params)
        def unoauno = new Unoauno(params)

        assert unoauno.save() != null

        params.id = unoauno.id

        def model = controller.edit()

        assert model.unoaunoInstance == unoauno
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/unoauno/list'

        response.reset()

        populateValidParams(params)
        def unoauno = new Unoauno(params)

        assert unoauno.save() != null

        // test invalid parameters in update
        params.id = unoauno.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/unoauno/edit"
        assert model.unoaunoInstance != null

        unoauno.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/unoauno/show/$unoauno.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        unoauno.clearErrors()

        populateValidParams(params)
        params.id = unoauno.id
        params.version = -1
        controller.update()

        assert view == "/unoauno/edit"
        assert model.unoaunoInstance != null
        assert model.unoaunoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/unoauno/list'

        response.reset()

        populateValidParams(params)
        def unoauno = new Unoauno(params)

        assert unoauno.save() != null
        assert Unoauno.count() == 1

        params.id = unoauno.id

        controller.delete()

        assert Unoauno.count() == 0
        assert Unoauno.get(unoauno.id) == null
        assert response.redirectedUrl == '/unoauno/list'
    }
}
