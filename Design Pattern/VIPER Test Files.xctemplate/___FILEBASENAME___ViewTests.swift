//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest
import UIKit
@testable import Project
import Entities

class ___VARIABLE_ModuleName___ViewTests: XCTestCase {

    var view: ___VARIABLE_ModuleName___View!
    var presenter: MockPresenter!

    override func setUp() {
        super.setUp()
        view = ___VARIABLE_ModuleName___Router.storyboard.instantiateViewController(withIdentifier: "___VARIABLE_ModuleName___Controller") as? ___VARIABLE_ModuleName___View

        presenter = MockPresenter()
        view.presenter = presenter
        _ = view.view
    }

    class MockPresenter: ___VARIABLE_ModuleName___PresenterDelegate {
        var view: ___VARIABLE_ModuleName___Delegate?
        var interactor: ___VARIABLE_ModuleName___InteractorInputDelegate?
        var router: ___VARIABLE_ModuleName___RouterDelegate?
        var inputCallbackResults: [String: Any] = [:]

        // TODO: implement
    }
}
