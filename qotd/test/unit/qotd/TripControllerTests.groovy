package qotd



import org.junit.*
import grails.test.mixin.*

@TestFor(TripController)
@Mock(Trip)
class TripControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/trip/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tripInstanceList.size() == 0
        assert model.tripInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tripInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tripInstance != null
        assert view == '/trip/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/trip/show/1'
        assert controller.flash.message != null
        assert Trip.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/trip/list'

        populateValidParams(params)
        def trip = new Trip(params)

        assert trip.save() != null

        params.id = trip.id

        def model = controller.show()

        assert model.tripInstance == trip
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/trip/list'

        populateValidParams(params)
        def trip = new Trip(params)

        assert trip.save() != null

        params.id = trip.id

        def model = controller.edit()

        assert model.tripInstance == trip
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/trip/list'

        response.reset()

        populateValidParams(params)
        def trip = new Trip(params)

        assert trip.save() != null

        // test invalid parameters in update
        params.id = trip.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/trip/edit"
        assert model.tripInstance != null

        trip.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/trip/show/$trip.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        trip.clearErrors()

        populateValidParams(params)
        params.id = trip.id
        params.version = -1
        controller.update()

        assert view == "/trip/edit"
        assert model.tripInstance != null
        assert model.tripInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/trip/list'

        response.reset()

        populateValidParams(params)
        def trip = new Trip(params)

        assert trip.save() != null
        assert Trip.count() == 1

        params.id = trip.id

        controller.delete()

        assert Trip.count() == 0
        assert Trip.get(trip.id) == null
        assert response.redirectedUrl == '/trip/list'
    }
}
