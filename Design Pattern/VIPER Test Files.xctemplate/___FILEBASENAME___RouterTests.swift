//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest
@testable import Project

class ___VARIABLE_ModuleName___RouterTests: XCTestCase {

    override class func setUp() {
        super.setUp()
    }

    func test___VARIABLE_ModuleName___Router_create___VARIABLE_ModuleName___ViewController_toCreateValidSetup_Always() {

        let view = ___VARIABLE_ModuleName___ViewMock()
        _ = ___VARIABLE_ModuleName___Router.create___VARIABLE_ModuleName___ViewController(view)

        if let presenter: ___VARIABLE_ModuleName___Presenter = view.presenter as? ___VARIABLE_ModuleName___Presenter {
            XCTAssertNotNil(presenter.view, "___VARIABLE_ModuleName___View in ___VARIABLE_ModuleName___Presenter is nil after configuration")
            XCTAssertNotNil(presenter.interactor, "___VARIABLE_ModuleName___Interactor in ___VARIABLE_ModuleName___Presenter is nil after configuration")
            XCTAssertNotNil(presenter.router, "___VARIABLE_ModuleName___Router in ___VARIABLE_ModuleName___Presenter is nil after configuration")
        } else {
            XCTFail("___VARIABLE_ModuleName___Presenter is nil after configuration")
        }
    }

    class ___VARIABLE_ModuleName___ViewMock: ___VARIABLE_ModuleName___View {}

}
