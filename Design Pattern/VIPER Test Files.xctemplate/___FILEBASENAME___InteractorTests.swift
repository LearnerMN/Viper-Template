//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest
@testable import Project

import Entities
import Moya
import Networking

class ___VARIABLE_ModuleName___InteractorTests: XCTestCase {

    var interactor: ___VARIABLE_ModuleName___Interactor!
    var presenter: MockPresenter!

    override class func setUp() {
        super.setUp()
    }

    override func setUp() {
        let provider = MoyaProvider<Api>(stubClosure: MoyaProvider.immediatelyStub)
        interactor = ___VARIABLE_ModuleName___Interactor(provider)
        presenter = MockPresenter()

        interactor.presenter = presenter
    }

    class MockPresenter: ___VARIABLE_ModuleName___InteractorOutputDelegate {
        var inputCallbackResults: [String: Any] = [:]
    }
}
