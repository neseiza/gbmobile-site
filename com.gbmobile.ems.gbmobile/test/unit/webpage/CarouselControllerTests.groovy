package webpage



import org.junit.*
import grails.test.mixin.*

@TestFor(CarouselController)
@Mock(Carousel)
class CarouselControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/carousel/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.carouselInstanceList.size() == 0
        assert model.carouselInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.carouselInstance != null
    }

    void testSave() {
        controller.save()

        assert model.carouselInstance != null
        assert view == '/carousel/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/carousel/show/1'
        assert controller.flash.message != null
        assert Carousel.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/carousel/list'

        populateValidParams(params)
        def carousel = new Carousel(params)

        assert carousel.save() != null

        params.id = carousel.id

        def model = controller.show()

        assert model.carouselInstance == carousel
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/carousel/list'

        populateValidParams(params)
        def carousel = new Carousel(params)

        assert carousel.save() != null

        params.id = carousel.id

        def model = controller.edit()

        assert model.carouselInstance == carousel
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/carousel/list'

        response.reset()

        populateValidParams(params)
        def carousel = new Carousel(params)

        assert carousel.save() != null

        // test invalid parameters in update
        params.id = carousel.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/carousel/edit"
        assert model.carouselInstance != null

        carousel.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/carousel/show/$carousel.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        carousel.clearErrors()

        populateValidParams(params)
        params.id = carousel.id
        params.version = -1
        controller.update()

        assert view == "/carousel/edit"
        assert model.carouselInstance != null
        assert model.carouselInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/carousel/list'

        response.reset()

        populateValidParams(params)
        def carousel = new Carousel(params)

        assert carousel.save() != null
        assert Carousel.count() == 1

        params.id = carousel.id

        controller.delete()

        assert Carousel.count() == 0
        assert Carousel.get(carousel.id) == null
        assert response.redirectedUrl == '/carousel/list'
    }
}
