//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest
import Entities
@testable import Project

class ___VARIABLE_ModuleName___PresenterTests: XCTestCase {

    var presenter: ___VARIABLE_ModuleName___Presenter!
    var interactor: MockInteractor!
    var router: MockRouter!
    var view: MockView!

    override func setUp() {
        super.setUp()

        self.router = MockRouter()
        self.view = MockView()
        self.interactor = MockInteractor()

        presenter = ___VARIABLE_ModuleName___Presenter()

        let navController = UINavigationController(rootViewController: self.view)

        if let viewController = navController.topViewController as? ___VARIABLE_ModuleName___Delegate {
            presenter.view = viewController
        }

        presenter.router = self.router

        interactor.presenter = self.presenter
        presenter.interactor = self.interactor

        view.presenter = self.presenter

    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Mocks
    class MockInteractor: ___VARIABLE_ModuleName___InteractorInputDelegate {
        var presenter: ___VARIABLE_ModuleName___InteractorOutputDelegate?
        var inputCallbackResults: [String: Any] = [:]
        // TODO: implement
    }

    class MockRouter: ___VARIABLE_ModuleName___RouterDelegate {
        var inputCallbackResults: [String: Any] = [:]
        // TODO: implement
    }

    class MockView: UIViewController, ___VARIABLE_ModuleName___Delegate {
        var presenter: ___VARIABLE_ModuleName___PresenterDelegate?
        var inputCallbackResults: [String: Any] = [:]
        // TODO: implement
    }
}
