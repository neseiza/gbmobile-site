package webpage



import org.junit.*
import grails.test.mixin.*

@TestFor(LabelController)
@Mock(Label)
class LabelControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/label/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.labelInstanceList.size() == 0
        assert model.labelInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.labelInstance != null
    }

    void testSave() {
        controller.save()

        assert model.labelInstance != null
        assert view == '/label/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/label/show/1'
        assert controller.flash.message != null
        assert Label.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/label/list'

        populateValidParams(params)
        def label = new Label(params)

        assert label.save() != null

        params.id = label.id

        def model = controller.show()

        assert model.labelInstance == label
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/label/list'

        populateValidParams(params)
        def label = new Label(params)

        assert label.save() != null

        params.id = label.id

        def model = controller.edit()

        assert model.labelInstance == label
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/label/list'

        response.reset()

        populateValidParams(params)
        def label = new Label(params)

        assert label.save() != null

        // test invalid parameters in update
        params.id = label.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/label/edit"
        assert model.labelInstance != null

        label.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/label/show/$label.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        label.clearErrors()

        populateValidParams(params)
        params.id = label.id
        params.version = -1
        controller.update()

        assert view == "/label/edit"
        assert model.labelInstance != null
        assert model.labelInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/label/list'

        response.reset()

        populateValidParams(params)
        def label = new Label(params)

        assert label.save() != null
        assert Label.count() == 1

        params.id = label.id

        controller.delete()

        assert Label.count() == 0
        assert Label.get(label.id) == null
        assert response.redirectedUrl == '/label/list'
    }
}
