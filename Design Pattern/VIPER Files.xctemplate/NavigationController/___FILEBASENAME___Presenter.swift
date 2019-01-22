//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
class ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterDelegate {

    weak var view: ___VARIABLE_ModuleName___Delegate?
    var interactor: ___VARIABLE_ModuleName___InteractorInputDelegate?
    var router: ___VARIABLE_ModuleName___RouterDelegate?

    func viewDidLoad() {

    }

    func dismiss() {
    	if let viewController = self.view as? UIViewController {
            if let nav = viewController.navigationController {
                self.router?.dismiss(view: nav)
            }
        }
    }
}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___InteractorOutputDelegate {

}