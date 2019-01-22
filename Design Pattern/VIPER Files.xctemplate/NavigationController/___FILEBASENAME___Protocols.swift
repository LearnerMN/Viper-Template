//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - View

protocol ___VARIABLE_ModuleName___Delegate: class {
    func error(notification: Notification)
}

// MARK: - Interactor

protocol ___VARIABLE_ModuleName___InteractorInputDelegate: class {
    var presenter: ___VARIABLE_ModuleName___InteractorOutputDelegate? { get set }
}

protocol ___VARIABLE_ModuleName___InteractorOutputDelegate: class {
}

// MARK: - Presenter

protocol ___VARIABLE_ModuleName___PresenterDelegate: class {
    var view: ___VARIABLE_ModuleName___Delegate? { get set }
    var interactor: ___VARIABLE_ModuleName___InteractorInputDelegate? { get set }
    var router: ___VARIABLE_ModuleName___RouterDelegate? { get set }

    func viewDidLoad()
    func dismiss()
}

// MARK: - Router

protocol ___VARIABLE_ModuleName___RouterDelegate: class {
    static func create___VARIABLE_ModuleName___ViewController(_ view: ___VARIABLE_ModuleName___View?) -> UIViewController
    func dismiss(view: UINavigationController)
}
