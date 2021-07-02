import Foundation

protocol PersonViewToPresenterProtocol {
    func save()
}

protocol PersonPresenterToViewProtocol {
    func saveCompleted()
}


class PersonView : PersonPresenterToViewProtocol {
    var presenter: PersonViewToPresenterProtocol

    init (_ presenter: PersonViewToPresenterProtocol) {
        self.presenter = presenter
    }

    func saveCompleted() {
        print("Update screen")
    }
}

class PersonPresenter : PersonViewToPresenterProtocol {
    var view: PersonPresenterToViewProtocol?

    func save() {
        print("Save")
        self.view?.saveCompleted()
    }
}


func main() {
    var presenter = PersonPresenter()
    var view = PersonView(presenter)
    presenter.view = view

    presenter.save()
}

main()