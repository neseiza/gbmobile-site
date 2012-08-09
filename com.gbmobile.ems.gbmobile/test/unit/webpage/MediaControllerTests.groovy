package webpage



import org.junit.*
import grails.test.mixin.*

@TestFor(MediaController)
@Mock(Media)
class MediaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/media/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.mediaInstanceList.size() == 0
        assert model.mediaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.mediaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.mediaInstance != null
        assert view == '/media/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/media/show/1'
        assert controller.flash.message != null
        assert Media.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/media/list'

        populateValidParams(params)
        def media = new Media(params)

        assert media.save() != null

        params.id = media.id

        def model = controller.show()

        assert model.mediaInstance == media
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/media/list'

        populateValidParams(params)
        def media = new Media(params)

        assert media.save() != null

        params.id = media.id

        def model = controller.edit()

        assert model.mediaInstance == media
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/media/list'

        response.reset()

        populateValidParams(params)
        def media = new Media(params)

        assert media.save() != null

        // test invalid parameters in update
        params.id = media.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/media/edit"
        assert model.mediaInstance != null

        media.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/media/show/$media.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        media.clearErrors()

        populateValidParams(params)
        params.id = media.id
        params.version = -1
        controller.update()

        assert view == "/media/edit"
        assert model.mediaInstance != null
        assert model.mediaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/media/list'

        response.reset()

        populateValidParams(params)
        def media = new Media(params)

        assert media.save() != null
        assert Media.count() == 1

        params.id = media.id

        controller.delete()

        assert Media.count() == 0
        assert Media.get(media.id) == null
        assert response.redirectedUrl == '/media/list'
    }
}
