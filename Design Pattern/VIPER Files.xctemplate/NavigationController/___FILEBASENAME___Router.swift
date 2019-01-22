//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterDelegate {

    static let storyboard = UIStoryboard(name: "___VARIABLE_ModuleName___", bundle: Bundle.main)

    static func create___VARIABLE_ModuleName___ViewController(_ view: ___VARIABLE_ModuleName___View?) -> UIViewController {
        guard let vc = view ?? storyboard.instantiateViewController(withIdentifier: "___VARIABLE_ModuleName___Controller") as? ___VARIABLE_ModuleName___View else {
            return UIViewController()
        }

        let presenter: ___VARIABLE_ModuleName___PresenterDelegate & ___VARIABLE_ModuleName___InteractorOutputDelegate = ___VARIABLE_ModuleName___Presenter()
        let interactor: ___VARIABLE_ModuleName___InteractorInputDelegate  = ___VARIABLE_ModuleName___Interactor(nil)
        let router: ___VARIABLE_ModuleName___RouterDelegate = ___VARIABLE_ModuleName___Router()

        vc.presenter = presenter
        presenter.view = vc
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        let navController = UINavigationController(rootViewController: vc)
        navController.navigationBar.prefersLargeTitles = false
        navController.navigationBar.tintColor = UIColor.white
        navController.navigationBar.barTintColor = UIColor.flatBlue
        navController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        return navController
    }

    func dismiss(view: UINavigationController) {
        view.popViewController(animated: true)
    }
}