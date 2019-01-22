//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import Networking
import Moya

class ___VARIABLE_ModuleName___Interactor: ___VARIABLE_ModuleName___InteractorInputDelegate {
    weak var presenter: ___VARIABLE_ModuleName___InteractorOutputDelegate?

    let provider: MoyaProvider<Api>
    public init(_ provider: MoyaProvider<Api>?) {
        let authPlugin = AccessTokenPlugin(tokenClosure: UserDefaults.standard.string(forKey: "token") ?? "")
        self.provider = provider ?? MoyaProvider<Api>(plugins: [authPlugin, NetworkLoggerPlugin(verbose: true)])
    }
}
